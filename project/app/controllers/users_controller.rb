class UsersController < ApplicationController
    # def index
    #     render plain: "I'm in the index action!"
    # end
    def index
        users = User.all
        render json: users
    end

    # def create
    #     render json: params
    #   end
end