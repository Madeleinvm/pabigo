class FollowUpsController < UserBaseController
  #before_action :set_follow_up, only: [:show]

  def index
    #@adoption = Adoption.all
    @adoptions = current_user.adoptions
  end

  def new
    @follow_up = FollowUp.new
  end

  def create
    
    @follow_up = FollowUp.new(follow_params)
  
    #@follow_up.adoption = @adoption
    if @follow_up.save
      #@adoptionss = Adoption.find(params[:id])
      FollowMailer.with(
      adoptionss: @adoptionss,
      ).follow.deliver_now
      if params[:images_attributes]
        params[:images_attributes]['image'].each do |a|
          @image_attachment = @follow_up.images.create!(:picture => a, :name => 'Follow')
        end
      end
      #Se creó el seguimiento con sus imagenes correctamente
      #redirect_to follow_ups_index_path
      #redirect_to index_path
      
    else
      flash.now[:danger] = "Por favor revise los campos"
      render 'new'
    end
  
end

  def show
    @follow_up = FollowUp.find(params[:id])
  end

 
  def edit
       
  end

  
  def update
    @adopter = Adoption.find(params[:id])
    flash[:success] = "Su seguimiento fue solicitado, espere su respuesta"
    redirect_to profile_path

    UpsMailer.with(
      adopter: @adopter
    ).seguimiento.deliver_now
    #UpsMailer.seguimiento(@adoptionss).deliver
  end

  private
	#def set_follow_up
	#	@follow_up = FollowUp.find(params[:id])
  #end
  
  def redirect_cancel
    redirect_to profile_path if params[:cancel]
  end
  
  def follow_params
    params.require(:follow_up).permit(:description, images_attributes: [:id, :picture, :name])
  end
end
