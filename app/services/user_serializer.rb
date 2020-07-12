class UserSerializer
    def initialize(user)
        @user = user
    end

    def to_serialized_json
        @user.to_json(:include => {
            :goals => {:only => [:target, :id]}
        }, :except => [:password_digest])
    end
end
