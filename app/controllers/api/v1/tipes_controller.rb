class Api::V1::TipesController < ApplicationController
    include Response
    include ExceptionHandler
    
	  before_action :set_tipe, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token
    # GET /tipe
 def index 
    @tipes = Tipe.find_by_sql ["SELECT id, name, description FROM tipes "]
    render json: @tipes
  end

  # GET /tipe/:id
  def show
    @tipes = Tipe.find_by_sql ["SELECT id, name, description FROM tipes WHERE
    (category_id = ?)", params[:id]]
    render json: @tipes
  end

  def set_tipe
    @tipes = Tipe.find(params[:id])
  end

end
