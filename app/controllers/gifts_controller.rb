class GiftsController < ApplicationController

    def new
        @gift = Gift.new
    end

    def create 
        @gift = Gift.new(gift_params)
        @gift.giver_id = session[:giver_id]
        @gift.recipient_id = params[:gift][:recipient_id]
        if @gift.save
            redirect_to gift_path(@gift)
        else 
            render :new
        end
    end 

    def edit 
    end
   
    def index
    end 

    def show
        @gift = Gift.find_by_id(params[:id])
    end
    
    def update
    end

    def destroy
    end

    private 

    def gift_params
        params.require(:gift).permit(:name, :recipient_id)
    end

end