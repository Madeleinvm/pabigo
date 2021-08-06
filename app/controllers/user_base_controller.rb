class UserBaseController < ApplicationController
  before_action :authenticate_user!
  layout 'admin'
end
