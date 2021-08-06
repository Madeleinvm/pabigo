class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
      load_and_authorize_resource


  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    if params[:search]
      if params[:search]
        @products = Product.includes(:user).search(params[:search]).paginate(:page => params[:page], :per_page => 6)
      end
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product.images.build
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
     @product.images.build
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.assign_attributes({:users_id => current_user.id})
  
      if params[:images_attributes]
         if params[:images_attributes]['image'].length <= 10
            if @product.save
              if params[:images_attributes]
                params[:images_attributes]['image'].each do |a|
                  @image_attachment = @product.images.create!(:picture => a, :name => @product.name)
                end
                flash[:success] = "Producto creado exitosamente"
               redirect_to admin_products_path
              format.json { render :show, status: :created, location: @product }
              end

            else
               flash.now[:danger] = "El producto no se pudo crear, por favor revise los campos"
              render :new_admin_product_path
              format.json { render json: @product.errors, status: :unprocessable_entity }
            end
         else
           flash.now[:danger] = "El producto debe tener un máximo de 10 imágenes"
          # @user = Role.all
          render 'new'
        end
      else
        if @product.save
        #Se creó El producto sin imagenes de forma correcta
        flash[:success] = "Producto creado exitosamente"
        format.html { redirect_to admin_products_path}
      else
        flash.now[:danger] = "Producto no se ha podido crear, por favor revise los campos"
        render new_admin_product_path
      end
     end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if params[:images_attributes]
        if params[:images_attributes]['image'].length <= 10
          if @product.update(product_params)
            if params[:images_attributes]
                params[:images_attributes]['image'].each do |a|
                  @image_attachment = @product.images.create!(:picture => a, :name => @product.name)
                end

            format.html { redirect_to admin_products_path}
            format.json { render :show, status: :ok, location: @product }
            end

          else
            format.html { render :edit }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        else
          flash.now[:danger] = "El Producto debe tener un máximo de 10 imágenes"
          # @user = Role.all
            render 'edit'
        end
      else
        if @product.update(product_params)
          flash[:success] = "Producto Actualizado exitosamente"
          format.html { redirect_to admin_products_path}
            format.json { render :show, status: :ok, location: @product }
        else
          flash[:warnig] = "Producto no Actualizado"
          format.html { render :edit }
          format.json { render json: @product.errors, status: :unprocessable_entity }
      end
     end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to admin_products_path, notice: 'Product fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :address, :product_type, :qty, :phone_number, :users_id,images_attributes: [:id, :picture, :name])
    end
end
