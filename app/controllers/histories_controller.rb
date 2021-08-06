class HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  # GET /histories
  # GET /histories.json
  def index
    #Recuerda mostrar solo las historia con status publica

    if params[:search] or params[:search2]
      if params[:search]
        @histories = History.includes(:user).search(params[:search]).paginate(:page => params[:page], :per_page => 6)
      elsif  params[:search2]
        @histories = History.includes(:user).search(params[:search2]).paginate(:page => params[:page], :per_page => 6)
      end
    else

      if params[:history_status] and  params[:user_id]
        @histories = History.includes(:user).order(updated_at: :desc).where( history_status: (params[:history_status]), user_id: (params[:user_id])).paginate(:page => params[:page], :per_page => 6)
      else
        @histories = History.includes(:user).order(updated_at: :desc).where( history_status: 'publicada').paginate(:page => params[:page], :per_page => 6)
      end
    end 
  end

  # GET /histories/1
  # GET /histories/1.json
  def show
    @history.images.build
    @user_email = @history.user.email

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @history }
    end
  end

  # GET /histories/new
  def new
    @history = History.new
  end

  # GET /histories/1/edit
  def edit
  end

  # POST /histories
  # POST /histories.json
  def create
    @history = History.new(history_params)
    @history.assign_attributes({:user_id => current_user.id})
    @history.assign_attributes({:history_status => 'en revision'})

    if params[:images_attributes]
      if params[:images_attributes]['image'].length <= 10
        if @history.save

          if params[:images_attributes]
            params[:images_attributes]['image'].each do |a|
              @image_attachment = @history.images.create!(:picture => a, :name => @history.title)
            end
          end
        
          #Se creó la historia con sus imagenes correctamente
          flash[:success] = "Historia creada exitosamente, una vez revisada será publicada"
          redirect_to histories_path(:history_status => @history.history_status)
        else
          flash.now[:danger] = "La Historia no se ha podido crear, por favor revise los campos"
          # @user = Role.all
          render 'new'
        end
      else
        flash.now[:danger] = "La Historia debe tener un máximo de 10 imágenes"
          # @user = Role.all
          render 'new'
      end
    else
      if @history.save      
        #Se creó la historia sin imagenes de forma correcta
        flash[:success] = "Historia creada exitosamente, una vez revisada será publicada"
        redirect_to histories_path(:history_status => @history.history_status)
      else
        flash.now[:danger] = "La Historia no se ha podido crear, por favor revise los campos"
        render 'new'
      end
    end
  end

  # PATCH/PUT /histories/1
  # PATCH/PUT /histories/1.json
  def update

    @history.assign_attributes({:user_id => current_user.id})
    @history.assign_attributes({:history_status => 'en revision'})
    if params[:images_attributes]
      if params[:images_attributes]['image'].length <= 10
        if @history.update(history_params)

          if params[:images_attributes]
            params[:images_attributes]['image'].each do |a|
              @image_attachment = @history.images.create!(:picture => a, :name => @history.title)
            end
          end

          flash[:success] = "Historia actualizada exitosamente, una vez revisada será publicada"
          redirect_to histories_path(:history_status => @history.history_status)
        else
          flash[:warnig] = "Historia no actualizada"
          render 'edit'
        end
      else
        flash.now[:danger] = "La Historia debe tener un máximo de 10 imágenes"
        # @user = Role.all
          render 'edit'
      end
    else
      if @history.update(history_params)
        flash[:success] = "Historia actualizada exitosamente, una vez revisada será publicada"
        redirect_to histories_path(:history_status => @history.history_status)
      else
        flash[:warnig] = "Historia no actualizada"
        render 'edit'
      end
    end
  end

  # DELETE /histories/1
  # DELETE /histories/1.json
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history
      @history = History.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def history_params
      params.require(:history).permit(:title, :description, :history_status, images_attributes: [:id, :picture, :name])
    end
end
