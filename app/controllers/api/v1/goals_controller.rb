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

    def create
        goal = Goal.new(goal_params)
        if goal.save
            render json: goal, status: :accepted
        else
            render json: {erros: goal.errors.full_messages}, status:
            :unprocessible_entity
        end
    end

    def edit
    end

    def destroy
    end

    private

    def goal_params
        params.require(:goal).permit(:target, :last_click, :level, :units)
    end

end
