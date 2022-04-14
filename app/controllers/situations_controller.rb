class SituationsController < ApplicationController

    def index
        situations = Situation.all
        render json: situations
    end

    def show
        situation = Situation.find(params[:id])
        render json: situation
    end

    def first
        situation = Situation.first
        render json: situation
    end

end
