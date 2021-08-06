class Admin::PetsController < Admin::BaseController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
      load_and_authorize_resource

  # GET /pets
  # GET /pets.json
  def index
    @pets = Pet.all
    @race = Race.all
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
    @pet.images.build
  end

  # GET /pets/new
  def new
    @pet = Pet.new
    @races = Race.all
  end

  # GET /pets/1/edit
  def edit
    @races = Race.all
    @pet.images.build
  end

  # POST /pets
  # POST /pets.json
  def create

    @pet = Pet.new(pet_params)
    @usuario = User.find_by_email(current_user.email)
    @usuario = User.find_by_created_at(current_user.created_at)    
    @adopcion= Adoption.new
    @adopcion.adoption_date = Date.today
    @adopcion.users_id = @usuario.id
    #Prints for control ADOPTION

    @adopcion.save
    @pet.adoptions_id = @adopcion.id
    #Print for control pt.2
    puts @pet.name
    puts "ID de adopcion: #{@adopcion.id}"
    puts @pet.adoptions_id
    puts @pet.races_id
    puts @pet.aprox_age
    puts @pet.dewormed
    puts @pet.neutered
    puts @pet.special_needs
    puts @pet.species
    puts @pet.weight
    puts @pet.description

    respond_to do |format|
      if params[:images_attributes]
         if params[:images_attributes]['image'].length <= 10
            if @pet.save
              if params[:images_attributes]
                params[:images_attributes]['image'].each do |a|
                  @image_attachment = @pet.images.create!(:picture => a, :name => @pet.name)
                end
                flash[:success] = "Producto creado exitosamente"
              format.html { redirect_to admin_pets_path}
             
              end  
              
            else
               flash.now[:danger] = "El registro de mascota no se pudo crear, por favor revise los campos"
              format.html { render :new_admin_pet_path }
              format.json { render json: @pet.errors, status: :unprocessable_entity }
            end
         else
           flash.now[:danger] = "El registro de mascota debe tener un máximo de 10 imágenes"
          # @user = Role.all
          render 'new'
        end     
      else
        if @pet.save      
        #Se creó El producto sin imagenes de forma correcta
        flash[:success] = "Registro de mascota creado exitosamente"
        format.html { redirect_to admin_pets_path}
      else
        flash.now[:danger] = "Registro de mascota no se ha podido crear, por favor revise los campos"
        render 'new'
      end
     end  
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    @races = Race.all
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'La mascota fue modificada exitosamente.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @adopcion = Adoption.find(@pet.adoptions_id)

    @pet.destroy
    respond_to do |format|
      format.html { redirect_to admin_pets_path, notice: 'La Mascota fue eliminada exitosamente.' }
      format.json { head :no_content }
    end

    @adopcion.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:name, :adoptions_id, :races_id, :weight, :description, :special_needs, :dewormed, :neutered, :aprox_age, :species)
    end
end
