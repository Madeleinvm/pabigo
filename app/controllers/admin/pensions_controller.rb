class Admin::PensionsController < Admin::BaseController
  def new
  end

  def edit
    @pension = Pension.find(params[:id])
  end

  def show
    @pension = Pension.find(params[:id]) 
  end

  def index
    @pensions = Pension.all
  end

  def actionPension
  end

  def update
    @pension = Pension.find(params[:id])
    if @pension.update(pension_params)
        redirect_to admin_pensions_index_path
    else
      render :edit
    end
  end

  def destroy
    @pension = Pension.find(params[:id])
    @pension.destroy
    redirect_to admin_pensions_index_path

  end

  private
	def set_pension
		@pension = Pension.find(params[:id])
	end

	def pension_params
		params.require(:pension).permit(:nombre, :red_social, :correo, :status, :description, images_attributes: [:id, :picture, :name])
	end
end

