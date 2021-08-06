class ComplaintsController < ApplicationController
  def new
    @complaint = Complaint.new
    @image = @complaint.build_image
    @institutions = Institution.all
  end

  def create
    @complaint = Complaint.new(complaint_params)

    if @complaint.save
      flash[:warning] = 'Su denuncia ha sido enviada para ser procesada'
      redirect_to root_path
    else
      flash[:danger] = 'Por favor revise los problemas abajo'
      @institutions = Institution.all
      @image = @complaint.build_image
      render 'new'
    end
  end

  private

    def complaint_params
      params.require(:complaint).permit(
        :abusive_name, :description, :place,
        :institution_id, image_attributes: [:id, :name, :picture]
      )
    end
end
