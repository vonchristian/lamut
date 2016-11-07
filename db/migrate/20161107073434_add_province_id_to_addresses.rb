class AddProvinceIdToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :province_id, :integer
    add_index :addresses, :province_id
  end
end
