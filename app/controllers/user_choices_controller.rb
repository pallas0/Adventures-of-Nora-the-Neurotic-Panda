class UserChoicesController < ApplicationController

    def update
        user_choice = UserChoice.find_by(id: params[:id])
        user_choice.update(user_choice_params)
        render json: user_choice
    end

    def index
        user_choices = UserChoice.all
        render json: user_choices
    end

    def show
        user_choice = UserChoice.find_by(id: params[id])
        render json: user_choice
    end

    def create
        user_choice = UserChoice.create(user_choice_params)
        render json: user_choice
    end
    
    private
      
    def user_choice_params
        params.permit(:user_id, :choice_id)
    end

end
