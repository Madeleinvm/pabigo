class Admin::CategoriesController < Admin::BaseController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    #authorize! :view_categories, current_category
    #@categories = Category.all
    @categories = Category.paginate(page: params[:page], per_page: 10)
  end

  # GET /categories/new
  def new
    #authorize! :create_categories, current_category
    @category = Category.new
  end

  def create
    #authorize! :create_categories, current_category
    @category = Category.new(category_params)

    if @category.save
      flash[:success] = "La categoria ha sido creada exitosamente"
      redirect_to admin_categories_path
    else
      flash.now[:danger] = "La categoria no se pudo crear, por favor revise los campos"
      render 'new'
    end
  end

 # GET /categories/1/edit
  def edit
    #authorize! :create_categories, current_category
  end

  def update
    #authorize! :create_categories, current_category
    if @category.update(category_params)
      flash[:success] = "La categoria ha sido modificada exitosamente"
      redirect_to admin_categories_path
    else
      flash.now[:danger] = "La categoria no pudo ser modificada, por favor revise los campos"
      render 'edit'
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    flash[:success] = "La categoria ha sido eliminada exitosamente"
    redirect_to admin_categories_path
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # POST /categories
  # POST /categories.json

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
