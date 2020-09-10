class AddInstagramFollowToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :instagram_follow, :integer
  end
end
