class UsersController < ApplicationController



    def new
        
        @user = User.new
        @categories = Category.all
        @interests = Interest.all
    end
end
