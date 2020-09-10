class AddInstagramChangeToStore < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :instagram_change, :boolean
  end
end
