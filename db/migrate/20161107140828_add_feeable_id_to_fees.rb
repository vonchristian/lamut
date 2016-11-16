class AddFeeableIdToFees < ActiveRecord::Migration[5.0]
  def change
    add_column :fees, :feeable_id, :integer
    add_index :fees, :feeable_id
    add_column :fees, :feeable_type, :string
    add_index :fees, :feeable_type
  end
end
