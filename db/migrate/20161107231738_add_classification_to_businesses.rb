class AddClassificationToBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_column :businesses, :business_classification_id, :integer, index: true, foreign_key: true
  end
end
