class TemporalHomesController < UserBaseController
  layout 'admin', only: [:new, :create]

  def index
    @temporal_home = TemporalHome.all
  end

  def show
    # @temporal_home = TemporalHome.find(params[:id])
    @temporal_home = TemporalHome.all
  end

  def new
    @temporal_home = TemporalHome.new
  end

  def create
    @temporal_home = TemporalHome.new(temporal_home_params)
    @temporal_home.user = current_user

    if @temporal_home.save
      flash[:success] = "Su solicitud se ha enviado exitosamente"
      redirect_to profile_path
    else
      render 'new'
    end
  end

  private

    def temporal_home_params
      params.require(:temporal_home).permit(
        :id_card, :dog, :pet_characteristics,
        :home_type, :existing_pets, :kind_of_help,
        :protection_duration, :reference_full_name, 
        :reference_phone, :reference_id_card
      )
    end
end
