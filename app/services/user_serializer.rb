class UserSerializer
    def initialize(user)
        @user = user
    end

    def all_to_serialized_json
        @user.to_json(:only => [:id, :username])
    end

    def to_serialized_json
        @user.to_json(:include => {
            :goals => {:only => [:target, :id, :last_click, :level, :create_at, :units]}
        }, :except => [:password_digest])
    end
 
end
