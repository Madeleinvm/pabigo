class Admin::HistoriesController < Admin::BaseController
	
	before_action :set_history, only: [:show, :edit, :update, :destroy, :publicar_historia, :inactivar_historia, :rechazar_historia]
	load_and_authorize_resource
	
	def new
		@history = History.new
		@history.images.build
	end

	def edit
	end

	def create
		@history = History.new(history_params)
		@history.assign_attributes({:user_id => current_user.id})
		@history.assign_attributes({:history_status => 'publicada'})
		
		if params[:images_attributes]
			if params[:images_attributes]['image'].length <= 10
				if @history.save

					if params[:images_attributes]
						params[:images_attributes]['image'].each do |a|
							@image_attachment = @history.images.create!(:picture => a, :name => @history.title)
						end
					end

					flash[:success] = "Historia creada exitosamente"
					redirect_to admin_histories_path(:history_status => @history.history_status)
				else
					flash.now[:danger] = "La Historia no se pudo crear, por favor revise los campos"
					render 'new'
				end
			else
		    	flash.now[:danger] = "La Historia debe tener un máximo de 10 imágenes"
		    	# @user = Role.all
		        render 'new'
		    end
		else
			if @history.save
				flash[:success] = "Historia creada exitosamente"
				redirect_to admin_histories_path(:history_status => @history.history_status)
			else
				flash.now[:danger] = "La Historia no se pudo crear, por favor revise los campos"
				render 'new'
			end
		end
	end

	def show
		@history.images.build
		@user_email = @history.user.email
	end

	def index
		@histories = History.order(updated_at: :desc).where( history_status: (params[:history_status])).paginate(:page => params[:page], :per_page => 10)
	end

	def update
		# @history.assign_attributes({:history_status => 'publicada'})
		if params[:images_attributes]
			if params[:images_attributes]['image'].length <= 10
				if @history.update(history_params)

					params[:images_attributes]['image'].each do |a|
						@image_attachment = @history.images.create!(:picture => a, :name => @history.title)
					end

					flash[:success] = "Historia actualizada exitosamente"
					redirect_to admin_histories_path(:history_status => @history.history_status)
				else
					flash[:warnig] = "Historia no actualizada"
					redirect_to admin_histories_path(:history_status => @history.history_status)
				end
			else
		    	flash.now[:warnig] = "La Historia debe tener un máximo de 10 imágenes"
		        render 'edit'
		    end
		else
			if @history.update(history_params)
				flash[:success] = "Historia actualizada exitosamente"
				redirect_to admin_histories_path(:history_status => @history.history_status)
			else
				flash[:warnig] = "Historia no actualizada"
				render 'edit'
			end
		end
	end

	def inactivar_historia
		@history.assign_attributes({:history_status => 'inactiva'})
		if @history.save
			flash[:success] = "Historia actualizada exitosamente"
			redirect_to admin_histories_path(:history_status => @history.history_status)
		else
			flash[:warnig] = "Historia no actualizada"
			redirect_to admin_histories_path(:history_status => @history.history_status)
		end
	end

	def publicar_historia
		@history.assign_attributes({:history_status => 'publicada'})
		if @history.save
			flash[:success] = "Historia actualizada exitosamente"
			redirect_to admin_histories_path(:history_status => @history.history_status)
		else
			flash[:warnig] = "Historia no actualizada"
			redirect_to admin_histories_path(:history_status => @history.history_status)
		end
	end

	def rechazar_historia
		@history.assign_attributes({:history_status => 'rechazada'})
		if @history.save
			flash[:success] = "Historia actualizada exitosamente"
			redirect_to admin_histories_path(:history_status => @history.history_status)
		else
			flash[:warnig] = "Historia no actualizada"
			redirect_to admin_histories_path(:history_status => @history.history_status)
		end
	end

	def destroy
	    @history.destroy
	    flash[:warning] = "Historia eliminada para siempre"
	    redirect_to admin_histories_path(:history_status => 'publicada')
	  end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_history
		@history = History.find(params[:id])
	end

	def history_params
		params.require(:history).permit(:title, :description, images_attributes: [:id, :picture, :name])
	end

    
end
