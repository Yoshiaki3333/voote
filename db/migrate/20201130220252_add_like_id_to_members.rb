class AddLikeIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :like_id, :integer
  end
end
