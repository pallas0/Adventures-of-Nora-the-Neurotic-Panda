class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create!(user_params)
        session[:useer_id] = user.id
        render json: user, status: :created
    end

    def user_params
        params.permit(:username, :password)
    end

end
