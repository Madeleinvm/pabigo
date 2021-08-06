class PrivaciesController < UserBaseController
  before_action :set_privacy, only: [:edit, :update]

  def new
    @privacy = Privacy.new
  end

  def create
    @privacy = Privacy.new(privacy_params)
    @privacy.user = current_user

    if @privacy.save
      flash[:success] = 'Ajustes de privacidad creados exitosamente'
      redirect_to profile_path
    else
      flash.now[:danger] = 'No se pudieron crear los ajustes de privacidad'
      render 'new'
    end
  end

  def update
    if @privacy.update(privacy_params)
      flash[:success] = 'Ajustes de privacidad modificados exitosamente'
      redirect_to profile_path
    else
      flash.now[:danger] = 'No se pudieron guardar los ajustes de privacidad'
      render 'edit'
    end
  end

  private

    def privacy_params
      params.require(:privacy).permit(
        :show_full_name, :show_email, :show_profile_picture,
        :show_phones, :show_address
      )
    end

    def set_privacy
      @privacy = current_user.privacy
    end
end