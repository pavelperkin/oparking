class AddVaultUidToParking < ActiveRecord::Migration
  def change
    add_column :parkings, :vault_uid, :string
  end
end
