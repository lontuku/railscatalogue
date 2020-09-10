class AddInstagramLikeAvgToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :instagram_like_avg, :integer
  end
end
