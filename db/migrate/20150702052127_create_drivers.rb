class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :car_number
      t.string :car
      t.string :name

      t.timestamps
    end
  end
end
