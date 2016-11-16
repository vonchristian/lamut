class AddLineOfBusinessClassificationIdToLineOfBusinesses < ActiveRecord::Migration[5.0]
  def change
    add_reference :line_of_businesses, :line_of_business_classification, foreign_key: true
  end
end
