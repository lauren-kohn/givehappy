class SessionsController < ApplicationController

    def welcome
    end 

    def create 
        @giver = Giver.find_by(email: params[:giver][:email])
        if @giver.try(:authenticate, params[:giver][:password])
            session[:giver_id] = @giver.id
            redirect_to giver_path(@giver)
        else 
            redirect_to login_path, alert: "The credentials provided were incorrect. Please try again."
        end 
    end

    def destroy
        session.delete(:giver_id)
        redirect_to '/', alert: "You have logged out."
    end
    
end