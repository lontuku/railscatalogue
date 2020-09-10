class AddInstagramPostTotalToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :instagram_post_total, :integer
  end
end
