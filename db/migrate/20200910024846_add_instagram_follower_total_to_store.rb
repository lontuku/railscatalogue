class AddInstagramFollowerTotalToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :instagram_follower_total, :integer
  end
end
