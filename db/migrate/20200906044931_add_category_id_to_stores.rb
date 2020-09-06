class AddCategoryIdToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :category_id, :integer
  end
end
