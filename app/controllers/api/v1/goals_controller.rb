class Api::V1::GoalsController < ApplicationController

    def index 
       if (params[:user_id])
        user = User.find_by_id(params[:user_id])
        goals = user.goals
        render json: goals
       else
        goals = Goal.all
        render json: goals
        end
    end

    def show 
         goal = Goal.find_by_id(params[:id])
         render json: goal
    end
end
