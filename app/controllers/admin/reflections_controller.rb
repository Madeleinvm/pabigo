class Admin::ReflectionsController < Admin::BaseController
  
  def new
    @reflection = Reflection.new
    @reflection.build_image
  end

  def index
    @reflections = Reflection.all
  end

  def create
    @reflection = Reflection.new(reflection_params)
    @reflection.user = current_user
    
    if @reflection.save
      redirect_to profile_path
    else
      render'new'
    end
  end  

  def destroy
    @reflection = Reflection.find(params[:id])

    @reflection.destroy

    redirect_to profile_path
  end
  
  private 

    def reflection_params 
      params.require(:reflection).permit(
        :description, image_attributes: [:id, :name, :picture]) 
    end
end

