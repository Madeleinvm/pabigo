class Admin::DonationsController < Admin::BaseController

  before_action :set_donation, only: [:show, :edit, :update]

  def new
    authorize! :create_donations, current_user
    @donation = Donation.new
  end

  def create
    #Se crea la solucitud de donacion
    authorize! :create_donations, current_user
    @donation = Donation.new(donation_params)
    @donation.user = current_user
    
    if  @donation.dontype == "Monetaria"
      @donation.assign_attributes({:shipping => 'Cuenta: 020399288290922, Banco: Provincial, Rif: 3424553, Cuenta Corriente, Nombre: Pabigo'})
    else
      @donation.assign_attributes({:shipping => 'Caracas, Montalban III, Ave. Teheran, Universidad Católica Andrés Bello'})
    end
    
    if @donation.save

      if params[:images_attributes]
        params[:images_attributes]['image'].each do |a|
          @image_attachment = @donation.images.create!(:picture => a, :name => 'DonacionApp')
        end
      end
			redirect_to admin_donations_index_path
    else
      flash.now[:danger] = "La solicitud de la donación no se ha podido crear, por favor revise los campos"
			render 'new'
		end
  end
  
  def edit
    authorize! :create_donations, current_user
    @donation = Donation.find(params[:id])
  end

  def show
    authorize! :view_donations, current_user
    @donation = Donation.find(params[:id])
  end

  def index
    authorize! :view_donations, current_user
    @donation = if (params[:don])
      Donation.paginate(page: params[:page])
      .where(Donation.arel_table[:name]
      .lower
      .matches("%#{params[:don].downcase}%"))
    else
      @donation = Donation.all
    end
  end

  def destroy
    authorize! :create_donations, current_user
    @donation = Donation.find(params[:id])
    @donation.destroy
    redirect_to admin_donations_path
  end

  def update
    authorize! :create_donations, current_user
    @donation = Donation.find(params[:id])
    if @donation.update(donation_params)
      if params[:images_attributes]
        params[:images_attributes]['image'].each do |a|
          @image_attachment = @donation.images.create!(:picture => a, :name => 'DonacionApp')
        end
      end
        redirect_to admin_donations_path
    else
      render :edit
    end
  end

  private
	def set_donation
		@donation = Donation.find(params[:id])
	end

	def donation_params
		params.require(:donation).permit(:name, :description, :benefited, :quantity, :shipping, :dontype, images_attributes: [:id, :picture, :name])
  end
  
  def redirect_cancel
    redirect_to admin_donations_path if params[:cancel]
  end

end
