class ProfilesController < UserBaseController
  def show
    @phones = current_user.phones
    @privacy = current_user.privacy
  end
end