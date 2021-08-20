class GiversController < ApplicationController

    def new
        @giver = Giver.new
    end

    def create
        @giver = Giver.new(giver_params)
        if @giver.save
            session[:giver_id] = @giver.id 
            redirect_to giver_path(@giver) 
        else 
            render :new
            flash[:alert] = "Please complete all fields."
        end
    end 
    
    def index
    end

    def show
    end
    
    def edit 
    end 

    private

    def giver_params 
        params.require(:giver).permit(:name, :email, :password)
    end

end