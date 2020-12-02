class TopController < ApplicationController
    def index
       member_ids = Like.group(:member_id).order('count_member_id DESC').count(:member_id).keys
       @ranking = member_ids.map {|id| Member.find(id)}
       @members = Member.all
    end
    
end
