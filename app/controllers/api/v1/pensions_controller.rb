class Api::V1::PensionsController < ApplicationController
    include Response
	include ExceptionHandler


	  before_action :set_pension, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  # GET /pension
  def index
    @pensions = execute_statement("select nombre, description, status, correo, red_social
    from pensions")
    render json: @pensions
  end

  # POST /pension
  def create
    @pension = Pension.create!(walker_params)
    json_response(@pension, :created)
  end

  # GET /pension/:id
  def show
    json_response(@pension)
  end

  # PUT /pension/:id
  def update
    @pension.update(pension_params)
    head :no_content
  end

  # DELETE /pension/:id
  def destroy
    @pension.destroy
    head :no_content
  end

  private

  def pension_params
    # whitelist params
    params.require(:pension).permit()
  end

  def set_pension
    @pension = Pension.find(params[:id])
  end
  def execute_statement(sql)
    results = ActiveRecord::Base.connection.execute(sql)
    if results.present?
        return results
    else
        return nil
    end
end
end
