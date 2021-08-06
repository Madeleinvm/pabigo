class Api::V1::JournalsController < ApplicationController
    before_action :set_journal, only: [:show, :edit, :update, :destroy]

    def index
        @journals = Journal.all
        #@journals = Journal.paginate(:page => params[:page], :per_page => 7)
        #<%= will_paginate @jourals, :page_links => false,  :previous_label => '<- ', :next_label => ' ->' %>
    end
end
