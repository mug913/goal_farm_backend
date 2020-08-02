class Api::V1::RecordsController < ApplicationController

    def index 
       if (params[:goal_id])
        goal = Goal.find_by_id(params[:goal_id])
        records = goal.Record.all
        render json: records
       else
        records = Record.all
        render json: records
        end
    end

    def show 
         record = Record.find_by_id(params[:id])
         render json: record
    end

    def create
        goal = Goal.find_by_id(params[:goal_id])
        record = Record.create(record_params)
        record.goal = goal
        if record.valid?
            render json: record, status: :accepted
        else
            render json: {errors: record.errors.full_messages}, status:
            :unprocessible_entity
        end
    end

    # def update
    #     user = User.find_by_id(params[:user_id])
    #     goal = Goal.find_by_id(params[:id])
    #    goal.update(last_click: params[:last_click])
    #     if goal.valid?
    #         render json: goal, status: :accepted
    #     else
    #         render json: {errors: goal.errors.full_messages}, status:
    #         :unprocessible_entity
    #     end
    # end

    # def edit
    # end

    # def destroy
    # end

    private
    
    def record_params
        params.require(:record).permit( :record_date, :level, :units)
    end

end
