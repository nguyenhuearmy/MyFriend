class FriendsController < ApplicationController
    before_action :find_friend, only: [:show, :update, :destroy, :edit]
    
    def index
        @friends = Friend.where(user_id: current_user)
    end
    def new
        @friend = current_user.friends.build
    end
    
    def create
        @friend = current_user.friends.build(friend_params)
        if @friend.save
            redirect_to @friend
        else
            render 'new'
        end
    end
    
    def edit
    end
    
    def update
        if @friend.update(friend_params)
            redirect_to @friend
        else
            render 'edit'
        end
    end
    
    def destroy
        @friend.destroy
        redirect_to friends_path
    end
    
    def show
    end
    
    private
    
    def find_friend
        @friend = Friend.find(params[:id])
    end
    
    def friend_params
        params.require(:friend).permit(:name, :birthday, :email, :phone, :feeling, :avatar)
    end
    
end
