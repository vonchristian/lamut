class AddDefaultToFees < ActiveRecord::Migration[5.0]
  def change
    add_column :fees, :default, :boolean, default: false
  end
end
