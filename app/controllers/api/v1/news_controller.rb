class Api::V1::NewsController < ApplicationController
	include Response
	include ExceptionHandler


	before_action :set_new, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  # GET /news
  def index
    @news = New.all
    json_response(@news)
  end

  # POST /new
  def create
    @new = New.create!(new_params)
    json_response(@new, :created)
  end

  # GET /news/:id
  def show
    json_response(@new)
  end

  # PUT /news/:id
  def update
    @new.update(new_params)
    head :no_content
  end

  # DELETE /news/:id
  def destroy
    @new.destroy
    head :no_content
  end

  private

  def new_params
    # whitelist params
    params.permit(:title, :content1, :content2, :visits, :user_id)
  end
 
  def set_new
    @new = New.find(params[:id])
  end
end