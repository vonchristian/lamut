class RemoveBusinessIdFromLineOfBusinesses < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_of_businesses, :business_id, :integer
  end
end
