class Api::V1::JournalReminderController < ApplicationController
	include Response
	include ExceptionHandler


before_action :set_journals, only: [:show]
skip_before_action :verify_authenticity_token

  # GET /journal_reminder
  def reminder
    @journals = Journal.where("date_journal > now()").where("date_journal <= NOW() + '4 day'::INTERVAL")
    render json: @journals
  end

  def journal_params
    # whitelist params
      params.permit(:tipe_journal, :place_journal, :time_journal, :date_journal, :description_journal)
  end

  def set_journals
    @journals = Journal.find(params[:id])
  end
end