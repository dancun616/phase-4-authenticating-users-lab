class SessionsController < ApplicationController

    def login
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user
    end

    def logout
        session.delete :user_id
  head :no_content
    end

end