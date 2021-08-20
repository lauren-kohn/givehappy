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
            #flash.now[:error] = "Please complete all fields."
        end
    end 

    def show
        @giver = Giver.find_by_id(params[:id])
        redirect_to '/' if !@giver
    end
    
    def index
    end
    
    def edit 
    end 

    private

    def giver_params 
        params.require(:giver).permit(:name, :email, :password)
    end

end