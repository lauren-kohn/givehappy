class RecipientsController < ApplicationController

    def new
        @recipient = Recipient.new
        @recipient.build_gift
    end
    
    def index
    end 

    def show
    end
    
    def create 
    end 

    def edit 
    end

    def update
    end

    def destroy
    end

    private 

    def recipient_params
        params.require(:recipient).permit(:name, :gift_attributes[:name])
    end

end