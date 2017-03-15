class DeleteImageUploadFromParking < ActiveRecord::Migration
  def change
    remove_column :parkings, :schema, :string
  end
end
