module Api
  module V1
    class Users::SessionsController < Devise::SessionsController
      # acts_as_token_authentication_handler_for User, fallback_to_devise: false
      prepend_before_action :require_no_authentication, only: [:create]
      before_action :ensure_params_exist, only: :create
      respond_to :json

      def create
        user = User.find_by(email: params[:user_login])
        unless user.nil?
          if user.valid_password? params[:password]
            # render json: user
            render json: {
              'user': user,
              'profile': user.profile,
              'roles': user.roles
            }
            return
          end
        end
        render json: '{"error": "Combinación de email y contraseña inválida"}'
      end

      def destroy
        sign_out(resource_name)
      end

      protected

        def ensure_params_exist
          return unless params[:user_login].blank?
            render json: {success: false, message: "missing user_login parameter"
            }, status: 422
        end

        def invalid_login_attempt
          warden.custom_failure!
          render json: {success: false, message: "Error with your login or password"
          }, status: 401
        end

      private

        def current_user
          authenticate_with_http_token do |token, options|
            User.find_by(authentication_token: token)
          end
        end
    end
  end
end
