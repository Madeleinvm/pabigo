class Admin::ComplaintsController < Admin::BaseController
  def index
    @complaints = Complaint.all
    @approved_complaints = @complaints.where(approved: true)
    @denied_complaints = @complaints.where(approved: false)
    @unprocessed_complaints = @complaints.where(approved: nil)
  end

  def show
    @complaint = Complaint.find(params[:id])
  end

  def update
    @complaint = Complaint.find(params[:id])

    if params[:commit] == "Publicar"
      @complaint.update_attribute(:approved, true)

      flash[:warning] = "Denuncia publicada en la sección de denuncias"
      redirect_to admin_complaints_path
    elsif params[:commit] == "Rechazar"
      flash[:danger] = "Denuncia Rechazada exitosamente"
      redirect_to admin_complaints_path
      @complaint.update_attribute(:approved, false)
    end
  end
end
