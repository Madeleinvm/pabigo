class AdoptionsController < ApplicationController
  before_action :set_adoption, only: [:show, :edit, :update, :destroy]
  @users = User.all
  @races = Race.all
  @pets = Pet.all
  # GET /adoptions
  # GET /adoptions.json
  def index
    @adoption = Adoption.all
    @adoptions = current_user.adoptions
    @pets = Pet.all
  end

  # GET /adoptions/1
  # GET /adoptions/1.json
  def show
  end

  # def self.generate_adoption(@adoption)
  #
  #   @adoption.save
  #

  # end

  # GET /adoptions/new
  def new
    @adoption = Adoption.new
    @races = Race.all
    @pets = Pet.new
  end

  # GET /adoptions/1/edit
  def edit
  end

  # POST /adoptions
  # POST /adoptions.json
  def create
    @adoption = Adoption.new(adoption_params)
    respond_to do |format|
      if @adoption.save
        format.html { redirect_to @adoption, notice: 'Adoption was successfully created.' }
        format.json { render :show, status: :created, location: @adoption }
      else
        format.html { render :new }
        format.json { render json: @adoption.errors, status: :unprocessable_entity }
      end
    end
    @adoption.adopter_id = current_user
    @adoption.save
  end

  # PATCH/PUT /adoptions/1
  # PATCH/PUT /adoptions/1.json
  def update
     @adoption.update_attributes(adoption_params)
      if @adoption.save
       AdoptionMailer.adoptados(@adoption).deliver
       AdoptionMailer.adoptados2(@adoption).deliver
      end 
  end

  # DELETE /adoptions/1
  # DELETE /adoptions/1.json
  def destroy
    @adoption.destroy
    respond_to do |format|
      format.html { redirect_to adoptions_url, notice: 'Adoption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def adoption_params
      params.require(:adoption).permit(:adopter_id)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_adoption
      @adoption = Adoption.find(params[:id])
    end
end
