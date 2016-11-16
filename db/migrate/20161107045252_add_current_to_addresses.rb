class AddCurrentToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :current, :boolean, default: false
  end
end
