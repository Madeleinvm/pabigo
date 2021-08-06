class Admin::RacesController < Admin::BaseController
  before_action :set_race, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, :only => [:index, :show]
  before_action :redirect_cancel, only: [:create, :update]
  
  def new
    authorize! :view_races, current_user
    @race = Race.new
    @race.build_image
  end

  def create
    authorize! :create_races, current_user
    @race = Race.new(new_params)
    @race.image.validate_picture = true
    if @race.save
      flash[:success] = "La raza ha sido creada exitosamente"
      redirect_to admin_races_path
    else
      flash.now[:danger] = "La raza no se pudo crear, por favor revise los campos"
      render 'new'
    end
    
  end

  def index
    @races = if (params[:term] && params[:term2])
      Race.paginate(page: params[:page], per_page: 6)
      .where(Race.arel_table[:name]
      .lower
      .matches("%#{params[:term].downcase}%"))
      .where(Race.arel_table[:species]
      .lower
      .matches("%#{params[:term2].downcase}%"))
    elsif params[:term]
      Race.paginate(page: params[:page], per_page: 6)
      .where(Race.arel_table[:name]
      .lower
      .matches("%#{params[:term].downcase}%"))
    elsif params[:term2]
      Race.paginate(page: params[:page], per_page: 6)
      .where(Race.arel_table[:species]
      .lower
      .matches("%#{params[:term2].downcase}%"))
    else
      Race.paginate(page: params[:page], per_page: 6)
    end
  end

  def show
    authorize! :view_races, current_user
  end

  def edit
    authorize! :create_races, current_user
  end

  def update
    authorize! :create_races, current_user
    @new.image.validate_picture = true
    if @race.update(new_params)
      flash[:success] = "La raza ha sido modificada exitosamente"
      redirect_to admin_races_path
    else
      flash.now[:danger] = "La raza no se pudo modificar, por favor revise los campos"
      render 'edit'
    end
  end

  def destroy
    @race.destroy
    flash[:warning] = "Raza eliminada para siempre"
    redirect_to admin_races_path
  end

  private

    def new_params
      params.require(:race).permit(
        :term, :term2, :name, :species, :affectivity, :docility, :bustling, :playful, :grooming, :hair_loosner, :kids, :fur, :color, :height, :weight, :physical_details, :story, :character, :care, :health, image_attributes: [:id, :picture, :name] 
      )
    end

    def set_race
      @race = Race.find(params[:id])
    end

    def redirect_cancel
      redirect_to admin_races_path if params[:cancel]
    end

end
