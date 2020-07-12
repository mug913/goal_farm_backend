class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all
        render json: UserSerializer.new(users).all_to_serialized_json
    end

    def show
        user = User.find_by_id(params[:id])
        render json: UserSerializer.new(user).to_serialized_json

    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user, status: :accepted
        else
            render json: {erros: goal.errors.full_messages}, status:
            :unprocessible_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :tz)
    end

end
