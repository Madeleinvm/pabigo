class HomeController < ApplicationController
  def index
    @reflections = Reflection.all
    @total_reflections = Reflection.count
    @pets = Pet.all
    @race = Race.all
    @news = New.all
    @trainer_details = TrainerDetail.all
    @pensions = Pension.all
    @walkers = Walker.all
    @complaints = Complaint.where(approved: true).last(3)
  end
end