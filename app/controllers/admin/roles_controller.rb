class Admin::RolesController < Admin::BaseController
  before_action :set_role, only: [:show, :update]

  def index
    @roles = Role.all
    @permissions = Permission.all
  end

  def show
    @permissions = Permission.all
  end

  def update
    if @role.update!(role_params)
      flash[:success] = "Permisos modificados exitosamente"
      redirect_to admin_roles_path
    else
      flash.now[:danger] = "Al parecer hubo un error, por favor inténtalo nuevamente"
      render 'show'
    end
  end

  private

    def role_params
      params.require(:role).permit(permission_ids: [])
    end

    def set_role
      @role = Role.find(params[:id])
    end
end
