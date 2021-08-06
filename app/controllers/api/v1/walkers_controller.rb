class Api::V1::WalkersController < ApplicationController
    include Response
	include ExceptionHandler


	  before_action :set_walker, only: [:show, :update, :destroy]
  	skip_before_action :verify_authenticity_token

  # GET /walker
  def index
    @walkers = execute_statement("select p.name, p.last_name, u.email, 
  w.start_time, w.end_time, w.day, w.city , w.calification 
    from walkers w, user_roles ur, users u, profiles p 
      where w.role_id=ur.role_id and  p.user_id=u.id and u.id=ur.user_id and w.role_id= '5' 
          group by p.name, p.last_name, u.email, w.start_time, w.end_time, w.day, 
              w.city , w.calification")
    render json: @walkers
  end

  # POST /walker
  def create
    @walker = Walker.create!(walker_params)
    json_response(@walker, :created)
  end

  # GET /walker/:id
  def show
    json_response(@walker)
  end

  # PUT /walker/:id
  def update
    @walker.update(walker_params)
    head :no_content
  end

  # DELETE /walker/:id
  def destroy
    @walker.destroy
    head :no_content
  end

  private

  def walker_params
    # whitelist params
    params.require(:walker).permit(:role_id, :start_time, :end_time, :day, :city, :data_of_birth, :calification)
  end

  def set_walker
    @walker = Walker.find(params[:id])
  end
  def execute_statement(sql)
    results = ActiveRecord::Base.connection.execute(sql)
    if results.present?
        return results
    else
        return nil
    end
end

end
