class RequestsController < ApplicationController



  def index
    if user_signed_in?
      @requests = Request.all.paginate(:page => params[:page], :per_page => 12).order(created_at: :desc)
    else
      redirect_to root_path
      flash[:danger] = "Debe estar registrado para ingresar a la solicitud de donacion"
    end
  end

  def new
    if user_signed_in?
      @request = Request.new
    else
      redirect_to root_path
      flash[:danger] = "Debe estar registrado para poder crear la solicitud de donacion"
    end
  end

  def create
    if user_signed_in?
      @request = Request.new(request_params)
      # Tomo el id, nombre y apellido del usuario registrado para almacenarlo en variables
      @request.user_id = current_user.id
      @request.name = current_user.profile.name
      @request.last_name = current_user.profile.last_name
      @request.email = current_user.email

      if params[:images_attributes]
        if @request.save
          if params[:images_attributes]
            params[:images_attributes]['image'].each do |a|
              @image_attachment = @request.images.create!(:picture => a, :name => 'RequestApp')
            end
          end

          # if @request.tipo == 'Monetario'
          #   render 'edit'
          # else
          #   redirect_to @request
          # end

          redirect_to action: "index"

        else
          render 'new'
        end
      else
        flash.now[:danger] = "La solicitud requiere de una imagen"
        render 'new'
      end
    else
      redirect_to root_path
      flash[:danger] = "Debe estar registrado para ingresar a la solicitud de donacion"
    end
  end


  def show
    if user_signed_in?
     @request = Request.find(params[:id])
    else
     redirect_to root_path
     flash[:danger] = "Debe estar registrado para poder visualizar la solicitud"
    end
  end


  def edit
    if user_signed_in?
      @request = Request.find(params[:id])
    else
      redirect_to root_path
      flash[:danger] = "Debe estar registrado para ingresar a la solicitud de donacion"
    end
  end


  # Me permite actualizar el id con respecto a la respuestas
  # y en caso de que el usuario se registre ya tomaria su nombre
  # para asi mostrarlo en view de mvc

  def update
    @request = Request.find(params[:id])

    if params[:images_attributes]
      if @request.update(request_params)
        if params[:images_attributes]
          params[:images_attributes]['image'].each do |a|
            @image_attachment = @request.images.create!(:picture => a, :name => 'RequestApp')
          end
        end

        redirect_to action: 'show'
        flash[:success] = "Su solicitud ha sido editada con exito"
      else
        render 'edit'
        flash.now[:danger] = "Revise los siguentes errores"
      end
    else
      flash.now[:danger] = "La solicitud requiere de una imagen"
      render 'edit'
    end
  end

  def destroy
    @request = Request.find(params[:id])
    if @request.destroy
      redirect_to action: "index"
      flash[:success] = "Su solicitud se ha eliminado con exito"
    end
  end


  private
    def request_params
      params.require(:request).permit(:tipo, :email, :id, :descripcion, :name, :last_name, :user_id, :direccion, images_attributes: [:id, :picture, :name])
    end

end
