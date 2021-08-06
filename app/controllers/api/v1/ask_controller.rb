class Api::V1::AskController < AskController#ApplicationController
    include Response
    include ExceptionHandler
    
    before_action :set_ask, only: [:update, :destroy]
    skip_before_action :verify_authenticity_token

    # GET /ask
    def index
        @ask = Ask.order(created_at: :desc)
        render json: @ask.to_json()
    end

    def create
        @ask = Ask.create!(ask_params)
        if user_signed_in?
           @ask.user = current_user
        end
        if @ask.save
            @ask.answer = nil
            redirect_to action: "index"
        end
    end
    
    def edit
        @ask = Ask.find(params[:id])
        redirect_to action: "index"
    end
    
    def update
        @ask = Ask.find(params[:id])
        if @ask.update(ask_params)
            redirect_to action: "edit"
        end
    end
    
    def destroy
        @ask = Ask.find(params[:id])
        @ask.destroy
        redirect_to action: "index"
    end
    
    private
        def ask_params
        params.require(:ask).permit(:campo, :answer, :user_id, :tipo)
    end

    def set_ask
        @ask = Ask.find(params[:id])
    end

end
