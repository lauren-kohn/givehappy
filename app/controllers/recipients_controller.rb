class RecipientsController < ApplicationController

    def new
        @recipient = Recipient.new
        #@gift = @recipient.build_gift
    end

    def create 
        @recipient = Recipient.new(recipient_params)
        #@recipient.giver_id = session[:giver_id]
        if @recipient.save 
            redirect_to recipient_path(@recipient)
        else
            render :new 
        end
    end 
    
    def index
        @recipients = Recipient.all
    end 

    def show
        @recipient = Recipient.find_by_id(params[:id])
    end

    def edit 
    end

    def update
    end

    def destroy
    end

    private 

    def recipient_params
        params.require(:recipient).permit(:name)
    end

end