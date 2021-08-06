class PensionsController < ApplicationController
  def index
    @pensions = Pension.all
  end

  def create
    @pension = Pension.new(pension_params)
    #@pension.assign_attributes({:user_id => current_user.id})
    #@pension.assign_attributes({:status => 'Aprobado'})
    if @pension.save

      if params[:images_attributes]
        params[:images_attributes]['image'].each do |a|
          @image_attachment = @pension.images.create!(:picture => a, :name => 'pension')
        end
      end
      
      #Se creó el detalle de la pension con sus imagenes correctamente
      #redirect_to pensions_path
      #render :action => “actionpension”
      redirect_to action: :actionpension
      
    else
      flash.now[:danger] = "Detalle de la pension no se ha podido crear, por favor revise los campos"
      render 'new'
    end
  end

  def show
    @pension = Pension.find(params[:id])
  end

  def edit
    @pension = Pension.find(params[:id])
  end

  def new
  end

  def update
    @pension = Pension.find(params[:id])
    if @pension.update(pension_params)
        redirect_to pensions_actionpension_path
    else
      render :edit
    end
  end

  def destroy
    @pension = Pension.find(params[:id])
    @pension.destroy
    redirect_to pensions_actionpension_path
  end

  def actionpension
    @pensions = Pension.all
  end

  private

    def pension_params
      params.require(:pension).permit(:nombre, :red_social, :correo, :status, :description, :qualification)
    end
  end
