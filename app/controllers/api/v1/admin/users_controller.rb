class Api::V1::Admin::UsersController < ApplicationController
  def index
    @users = User.order('created_at DESC')
  end
end
