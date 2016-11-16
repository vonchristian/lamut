class AddBarangayIdToAddresses < ActiveRecord::Migration[5.0]
  def up
    add_column :addresses, :barangay_id, :integer, index: true, foreign_key: true
    remove_column :addresses, :barangay, :string
  end
  def down
    remove_column :addresses, :barangay_id, :integer, index: true, foreign_key: true
    add_column :addresses, :barangay, :string
  end
end
