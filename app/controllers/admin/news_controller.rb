class Admin::NewsController < Admin::BaseController
  before_action :set_new, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, :only => [:index, :show]
  before_action :redirect_cancel, only: [:create, :update]

  def new
    authorize! :view_news, current_user
    @new = New.new
    @new.build_image
  end

  def create
    authorize! :create_news, current_user
    @new = New.new(new_params)
    @new.image.validate_picture = true
    @new.user_id = current_user.id
    @new.visits = 0
    if @new.save
      flash[:success] = "la noticia ha sido creada exitosamente"
      redirect_to admin_news_index_path
    else
      flash.now[:danger] = "La noticia no se pudo crear, por favor revise los campos"
      render 'new'
    end
    
  end

  def show
    authorize! :view_news, current_user
  end

  def edit
    authorize! :create_news, current_user
  end

  def update
    authorize! :create_news, current_user
    @new.image.validate_picture = true
    if @new.update(new_params)
      flash[:success] = "La noticia ha sido modificada exitosamente"
      redirect_to admin_news_index_path
    else
      flash.now[:danger] = "La noticia no se pudo modificar, por favor revise los campos"
      render 'edit'
    end
  end

  def index
    #@news = New.where('title LIKE ?', '%'+ @search +'%').all.order(id: :desc)
    @news = if params[:term]
      New.paginate(page: params[:page], per_page: 6)
      .where(New.arel_table[:title]
      .lower
      .matches("%#{params[:term].downcase}%"))
      
    else
      New.paginate(page: params[:page], per_page: 6)
    end
  end

  def destroy
    @new.destroy
    flash[:warning] = "Noticia eliminado para siempre"
    redirect_to admin_news_index_path
  end

  private

    def new_params
      params.require(:new).permit(
        :title, :content1, :content2, image_attributes: [:id, :picture, :name] 
      )
    end

    def set_new
      @new = New.find(params[:id])
    end

    def redirect_cancel
      redirect_to admin_news_index_path if params[:cancel]
    end
end
