class AddDriverIdToPlace < ActiveRecord::Migration
  def change
    add_column :places, :driver_id, :integer
  end
end
