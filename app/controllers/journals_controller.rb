class JournalsController < ApplicationController
	before_action :set_journal, only: [:show, :edit, :update, :destroy]
  def index
    		@journals = Journal.all
    		#@journals = Journal.paginate(:page => params[:page], :per_page => 7)
    		#<%= will_paginate @jourals, :page_links => false,  :previous_label => '<- ', :next_label => ' ->' %>
  end

  def new
  	@journal = Journal.new
  end

  def create
  	@journal = Journal.new journal_params

  	if @journal.save
  		return redirect_to journals_path
  	end
  	render :new
  end

  def edit
  end

  def update
  	@journal.update journal_params
  	redirect_to journals_path
  end

  def destroy
  	@journal.destroy
  	redirect_to journals_path
  end


  def show
  end

  private

  	def journal_params
  		params.require(:journal).permit :tipe_journal, :place_journal, :time_journal, :date_journal, :description_journal
  	end

  	def set_journal
  		@journal = Journal.find params[:id]
  	end

end
