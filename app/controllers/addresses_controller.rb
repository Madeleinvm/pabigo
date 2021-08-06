class AddressesController < UserBaseController
  respond_to :html, :js
  before_action :set_address, only: [:edit, :update, :destroy]

	def new
		@address = Address.new
    @states = State.all
    @cities = City.all
	end

	def create
		@address = Address.new(address_params)
    @address.addressable_type = "User"
    @address.addressable_id = current_user.id

		if @address.save
			flash[:success] = 'Se ha agregado su dirección exitosamente'
			redirect_to profile_path
		else
      @states = State.all
      @cities = City.all
			render 'new'
		end
	end

  def edit
    @states = State.all
    @cities = City.all
  end

  def update
    if @address.update(address_params)
      flash[:success] = 'Se ha modificado su dirección exitosamente'
      redirect_to profile_path
    else
      @states = State.all
      @cities = City.all
      render 'edit'
    end
  end

	def destroy
    if @address.destroy
      flash[:warning] = "Dirección Eliminada Satisfactoriamente"
    else
      flash.now[:danger] = "La dirección no se pudo eliminar"
    end

    redirect_to profile_path
  end

  def cities
    @address = Address.new
    @cities = State.find_by_name(params[:state_name]).cities
  end

	private

		def address_params
			params.require(:address).permit(:line1, :line2, :zip_code, :city_id)
		end

    def set_address
      @address = Address.find(params[:id])
    end
end
