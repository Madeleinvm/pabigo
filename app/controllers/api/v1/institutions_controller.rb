class Api::V1::InstitutionsController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_institution, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /institutions
  def index
    @institutions = Institution.all
    render json: @institutions
  end
  
  def institution_params
    # whitelist params
      params.require(:institution).permit(:name, :address, :phone, :email, :web)
  end

  def set_institution
    @institution = Institution.find(params[:id])
  end
end