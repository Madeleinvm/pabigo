class TipTypesController < ApplicationController
  before_action :set_tip_type, only: [:show, :edit, :update, :destroy]
  @tip_types = TipType.all
  # GET /tip_types
  # GET /tip_types.json
  def index
    @tip_types = TipType.all
  end

  # GET /tip_types/1
  # GET /tip_types/1.json
  def show
  end

  # GET /tip_types/new
  def new
    @tip_types = TipType.new
  end

  # GET /tip_types/1/edit
  def edit
  end

  # POST /tip_types
  # POST /tip_types.json
  def create
    @tip_type = TipType.new(tip_type_params)

    respond_to do |format|
      if @tip_type.save
        format.html { redirect_to @tip_type, notice: 'Tip type was successfully created.' }
        format.json { render :show, status: :created, location: @tip_type }
      else
        format.html { render :new }
        format.json { render json: @tip_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tip_types/1
  # PATCH/PUT /tip_types/1.json
  def update
    respond_to do |format|
      if @tip_type.update(tip_type_params)
        format.html { redirect_to @tip_type, notice: 'Tip type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tip_type }
      else
        format.html { render :edit }
        format.json { render json: @tip_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tip_types/1
  # DELETE /tip_types/1.json
  def destroy
    
    @tip_type.destroy
    respond_to do |format|
      format.html { redirect_to tip_types_url, notice: 'Tip type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip_type
      @tip_type = TipType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tip_type_params
      params.require(:tip_type).permit(:name)
    end
end
