class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :set_roles, only: [:new, :create, :edit, :update]

  def index
    authorize! :view_users, current_user
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  def new
    authorize! :create_users, current_user
    @user = User.new
  end

  def create
    authorize! :create_users, current_user
    @user = User.new(user_params)

    if @user.save
      profile = Profile.new(user_id: @user.id).save!(validate: false)
      flash[:success] = "El usuario ha sido creado exitosamente"
      redirect_to admin_users_path
    else
      flash.now[:danger] = "El usuario no se pudo crear, por favor revise los campos"
      render 'new'
    end
  end

  def edit
    authorize! :create_users, current_user
  end

  def update
    authorize! :create_users, current_user
    @user.skip_password_validation = true
    if @user.update(user_params)
      flash[:success] = "El usuario ha sido modificado exitosamente"
      redirect_to admin_users_path
    else
      flash.now[:danger] = "El usuario no se pudo modificar, por favor revise los campos"
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash[:warning] = "Usuario eliminado para siempre"
    redirect_to admin_users_path
  end

  private

    def user_params
      params.require(:user).permit(
        :email, :password, :password_confirmation, role_ids: [],
        profile_attributes: [:id, :name, :last_name, :male]
      )
    end

    def set_user
      @user = User.find(params[:id])
    end

    def set_roles
      @roles = Role.all
    end
end
