class Admin::HomeController < Admin::BaseController
  def index
    # @temporal_home_count = TemporalHome.count
    @temporal_home_count = TemporalHome.where(approved: nil).count
  end
end