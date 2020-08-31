class AddSuspendedToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :suspended, :int
  end
end
