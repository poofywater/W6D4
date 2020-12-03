class UsersController < ApplicationController
    # def index
    #     render plain: "I'm in the index action!"
    # end
    def index
        users = User.all
        render json: users
    end
    
    def show
    # debugger
    user = User.find(params[:id])
    render json: user
end

def create
    user = User.new(post_params) #post_params returns key/value pairs permitted
    # debugger
    if user.save # NOT User#save!
        render json: user
    else
        render json: user.errors.full_messages, status: 422 # "unprocessable entity"
    end
end

def destroy
    user = User.find(params[:id])
    user.destroy
    # redirect_to "/posts" # sends to index with NEW request/response cycle
    # redirect will only GET
    redirect_to posts_url
end

def update
    user = User.find(params[:id])
    if user.update(post_params)
        redirect_to post_url(user) # sends to User#show
    else
        render json: user.errors.full_messages, status: 422
    end
end

private
def post_params
    # require(:top_level_key)
    # permit(:nested, :keys, :we, :permit)
    params.require(:user).permit(:body, :author_id)
end
end