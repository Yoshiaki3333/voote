class LikesController < ApplicationController

    def create
       Like.create(member_id: like_params[:member_id], user_id: current_user.id)
       redirect_to root_path
    end
    
    def destroy
        like = Like.find(params[:id])
        like.destroy(member_id: like_params[:member_id], user_id: current_user.id) if like.user_id == current_user.id
    end
    
    private
    def like_params
        params.permit(:member_id)
    end   
    
end