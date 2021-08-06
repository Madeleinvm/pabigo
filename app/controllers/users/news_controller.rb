class Users::NewsController < ApplicationController

  before_action :set_new, only: [:show]
  skip_before_action :verify_authenticity_token, :only => [:index, :show]

  def new
    authorize! :view_news, current_user
    @new = New.new
    @new.build_image
  end
  

  def index
    @news = New.paginate(page: params[:page], per_page: 6)
  end

  def show
    @news = New.all

  end

  private

    def new_params
      params.require(:new).permit(
        :title, :visits, :content1, :content2, image_attributes: [:id, :picture, :name] 
      )
    end

    def set_new
      @new = New.find(params[:id])
      @visits = @new.visits
      @new.update_column(:visits , @visits + 1)
    end

    def redirect_cancel
      redirect_to admin_news_index_path if params[:cancel]
    end
end
