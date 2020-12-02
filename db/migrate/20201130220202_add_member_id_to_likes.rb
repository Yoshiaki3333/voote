class AddMemberIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :member_id, :integer
  end
end
