class AddItemToStore < ActiveRecord::Migration[5.2]
  def change
    add_reference :stores, :item, foreign_key: true
  end
end
