class SessionsController < ApplicationController
    def create
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            # render json: {user: UserSerializer.new(user), token: encode_token(user.id)}
            render_user_token(user)
        else
            render json: {errors: "Invalid Credentials, try again"}, status: :forbidden
        end
    end

    def autologin
        # byebug
        # render json: {user: UserSerializer.new(logged_in_user), token: encode_token(logged_in_user.id)}
        render_user_token(logged_in_user)
    end
end
