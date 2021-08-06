class Admin::RequestNotificationsController < Admin::BaseController
  def index
    @temporal_homes = TemporalHome.all
    @approved_temporal_homes = TemporalHome.where(approved: true)
    @denied_temporal_homes = TemporalHome.where(approved: false)
  end

  def show
    @temporal_home = TemporalHome.find(params[:id])
  end

  def update
    @temporal_home = TemporalHome.find(params[:id])

    if params[:commit] == "Aprobar"
      @temporal_home.update_attribute(:approved, true)

      flash[:success] = "Solicitud Aprobada exitosamente"
      redirect_to profile_path
    elsif params[:commit] == "Rechazar"
      flash[:warning] = "Solicitud Rechazada exitosamente"
      redirect_to profile_path
      @temporal_home.update_attribute(:approved, false)
    end

    RequestNotificationMailer.with(
      temporal_home: @temporal_home,
      request: "Hogar Temporal"
    ).temporal_home_approved_email.deliver_now
  end
end