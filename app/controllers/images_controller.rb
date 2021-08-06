class ImagesController < UserBaseController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.imageable_type = 'Profile'
    @image.imageable_id = current_user.id

    if @image.save
      flash[:success] = 'Imagen subida exitosamente'
      redirect_to profile_path
    else
      flash.now[:danger] = 'La imagen no pudo subirse'
      render 'new'
    end
  end

  def update
    if @image.update(image_params)
      flash[:success] = 'Imagen editada exitosamente'
      redirect_to profile_path
    else
      flash.now[:danger] = 'La imagen no se pudo modificar'
      render 'edit'
    end
  end

  def destroy
    @image.remove_picture!

    params[:type] = @image.imageable_type

    if @image.save && @image.destroy
      flash[:warning] = 'Imagen eliminada exitosamente'
    else
      flash[:danger] = 'La imagen no se pudo eliminar'
    end

    if params[:type] == 'History' 
      redirect_back(fallback_location: root_path)
    else
      if params[:type] == 'Donation'
        redirect_back(fallback_location: root_path)
      else
        redirect_to profile_path
      end  
    end  
  end
  private

    def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:picture, :name)
    end
end