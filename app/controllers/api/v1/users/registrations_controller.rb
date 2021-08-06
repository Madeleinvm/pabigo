class Api::V1::Users::RegistrationsController < Devise::RegistrationsController
  # include Response
  # include ExceptionHandler
  respond_to :json

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    # Overriding Devise default behaviour to create a profile as well
    build_resource({})
    resource.build_profile
    respond_with self.resource
  end

  # POST /resource
  # def create
  #   super
  # end

  def create
    user = User.new(user_params)

    if user.save
      render json: user.as_json(auth_token: user.authentication_token, email: user.email), status: 201
      return
    else
      warden.custom_failure!
      render json: user.errors, status: 422
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

    def user_params
      params.require(:user).permit(
        :email, :password, :password_confirmation,
        profile_attributes: [:id, :name, :last_name, :male]
      )
    end

    # The path used after sign up.
    # def after_sign_up_path_for(resource)
    #   super(resource)
    # end

    # The path used after sign up for inactive accounts.
    # def after_inactive_sign_up_path_for(resource)
    #   super(resource)
    # end
end
