class Admin::AdsController < Admin::BaseController 
  before_action :set_ad, only: [:destroy,:update,:edit]

  # GET /ads
  # GET /ads.json
  def index 
  end  

  # GET /ads/1
  # GET /ads/1.json 
  def show
  end
  
  # GET /ads/new
  def new
    @ad = Ad.new 
    @ad.build_image
  end

  # POST /ads
  def create
    @ad = Ad.new(ad_params)
    @ad.user = current_user
    if @ad.save
      # params[:images]['picture'].each do |a|
			# 	@image = @ads.image.create!(:picture => a)
      # end
      flash[:success] = "La publicidad ha sido creado exitosamente"
      redirect_to admin_ads_path
    else
      flash.now[:danger] = "La publicidad no se pudo crear, por favor revise los campos"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @ad.update(ad_params)
      flash[:success] = "El usuario ha sido modificado exitosamente"
      redirect_to admin_ads_path
    else
      flash.now[:danger] = "El usuario no se pudo modificar, por favor revise los campos"
      render 'edit'
    end
  end

  # DELETE /ads/1
  # DELETE /ads/1.json
  def destroy
    @ad.destroy
    redirect_to admin_ads_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    #Parametros de la publicidad y de la imagen (Formulario anidado para la imagen)
    def ad_params
      params.require(:ad).permit(:title, :descripcion, image_attributes: [:id, :picture, :name])
    
    end

end


