class AddMunicipalityIdToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :municipality_id, :integer
    add_index :addresses, :municipality_id
  end
end
