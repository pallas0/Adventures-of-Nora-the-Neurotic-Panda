class ChoicesController < ApplicationController

    def index
        choices = Choice.all
        render json: choices
    end

    def show
        choice = Choice.find(params[:id])
        render json: choice
    end

end
