class DonationsController < ApplicationController

  before_action :set_donation, only: [:show]

  def index
    #Se muestran las primeras 6 solicitudes de donaciones
    @donations = Donation.paginate(page: params[:page], per_page: 6).order(id: :desc) 
  end

  def show
    #Se muestra la solicutud de donacion seleccionada
    @donations = Donation.find(params[:id])
  end

  def new
  end

  private
	def set_donation
		@donation = Donation.find(params[:id])
	end

	def donation_params
		params.require(:donation).permit(:name, :description, :benefited, :quantity, :shipping, :dontype)
  end

end
