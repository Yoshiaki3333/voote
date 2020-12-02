class MembersController < ApplicationController
    
    def index
        @member = Member.new
        @members = Member.all
        @like = Like.new
    end
    
    def create
        Member.create(member_params)
        redirect_to root_path
    end
    
    private
    
    def member_params
        params.require(:member).permit(:name).merge(user_id: current_user.id)
    end
end
