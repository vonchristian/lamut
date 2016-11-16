class RemoveMunicipalityFromAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :municipality, :string
  end
end
