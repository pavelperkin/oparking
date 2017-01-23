class AddSchemaToParkings < ActiveRecord::Migration
  def change
    add_column :parkings, :schema, :string
  end
end
