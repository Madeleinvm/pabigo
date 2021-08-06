class Api::V1::Users::PasswordsController < Devise::PasswordsController
  prepend_before_action :require_no_authentication, only: [:create]
  respond_to :json

  # POST /resource/password
  def create
    @user = User.find_by_email(user_params)

    # if successfully_sent?(resource)
    if @user.present?
      @user.send_reset_password_instructions
      # respond_with({}, location: after_sending_reset_password_instructions_path_for(resource_name))
      render json: '{"message": "Las instrucciones de recuperación se enviaron a su correo"}'
    else
      # respond_with(resource)
      render json: '{"error": "El email proporcionado no existe"}'
    end
  end

  private

    def user_params
      params.require(:email)
    end
end