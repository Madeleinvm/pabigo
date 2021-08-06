class Admin::TrainerDetailsController < Admin::BaseController

  before_action :set_trainer, only: [:show, :edit, :update, :create] 

  def new
    @trainer_detail = TrainerDetail.new(trainer_params)
		@trainer_detail.images.build
  end

  def edit
    @trainer_detail = TrainerDetail.find(params[:id])
  end

  def create
		@trainer_detail = TrainerDetail.new(trainer_params)
		@trainer_detail.assign_attributes({:user_id => current_user.id})
		@trainer_detail.assign_attributes({:trainer_detail_status => 'En espera'})

		if @trainer_detail.save

			if params[:images_attributes]
				params[:images_attributes]['image'].each do |a|
					@image_attachment = @trainer_detail.images.create!(:picture => a, :name => @trainer_detail.description)
				end
			end

			flash[:success] = "Solicitud enviada exitosamente"
			redirect_to admin_trainer_details_path(:trainer_detail_status => @trainer_detail.trainer_detail_status)
		else
			flash.now[:danger] = "La solicitud no fué enviada, por favor revise los campos"
			render 'new'
		end
  end
  
  def show
    @trainer_details = TrainerDetail.find(params[:id])
  end

  def destroy
    @trainer_detail = TrainerDetail.find(params[:id])
    @trainer_detail.destroy
    redirect_to admin_trainer_details_path
  end

  def index
	  @trainer_detail = TrainerDetail.all
  end

  def update
    @trainer_detail = TrainerDetail.find(params[:id])
    if @trainer_detail.update(trainer_params)
        redirect_to admin_trainer_details_index_path
    else
      render :edit
    end
  end


  private
	def set_trainer
		@trainer_detail = TrainerDetail.find(params[:id])
	end

	def trainer_params
		params.require(:trainer_detail).permit(:status, :description, images_attributes: [:id, :picture, :name])
	end
end
