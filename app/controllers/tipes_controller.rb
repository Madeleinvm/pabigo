class TipesController < ApplicationController
  before_action :set_tipe, only: [:show, :edit, :update, :destroy]

  # GET /tipes
  # GET /tipes.json
  def index
    @tipes = Tipe.all
    @tipes = Tipe.all.paginate(:page => params[:page], :per_page => 4)
  end

  # GET /tipes/1
  # GET /tipes/1.json
  def show
  end



  # GET /tipes/new
  def new
    @tipe = Tipe.new
  end

  # GET /tipes/1/edit
  def edit
  end

  # POST /tipes
  # POST /tipes.json
  def create
    @tipe = Tipe.new(tipe_params)

    respond_to do |format|
      if @tipe.save
        format.html { redirect_to @tipe, notice: 'Tipe was successfully created.' }
        format.json { render :show, status: :created, location: @tipe }
      else
        format.html { render :new }
        format.json { render json: @tipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipes/1
  # PATCH/PUT /tipes/1.json
  def update
    respond_to do |format|
      if @tipe.update(tipe_params)
        format.html { redirect_to @tipe, notice: 'Tipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipe }
      else
        format.html { render :edit }
        format.json { render json: @tipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipes/1
  # DELETE /tipes/1.json
  def destroy
    @tipe.destroy
    respond_to do |format|
      format.html { redirect_to tipes_url, notice: 'Tipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipe
      @tipe = Tipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipe_params
      params.require(:tipe).permit(:name, :description, :category_id)
    end
end
