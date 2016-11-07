class RemoveProvinceFromAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :province, :string
  end
end
