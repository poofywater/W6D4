class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
  end

    def show
       user = User.find(params[:id])
        render json: user
  end

    def create
        user = User.new(user_params) #post_params returns key/value pairs permitted
       
        if user.save # NOT User#save!
            render json: user
        else
            render json: user.errors.full_messages, status: 422 # "unprocessable entity"
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: user
        # redirect_to "/posts" # sends to index with NEW request/response cycle
        # redirect will only GET
        # redirect_to posts_url
    end

    def update
        user = User.find(params[:id])
        if user.update_attributes(user_params)
            render json: user
            # redirect_to post_url(user) # sends to User#show
        else
            render json: user.errors.full_messages, status: 422
        end
    end

    private
    def user_params
        # require(:top_level_key)
        # permit(:nested, :keys, :we, :permit)
        params.require(:user).permit(:name, :email)
    end
end