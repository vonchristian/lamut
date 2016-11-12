class CreateLineOfBusinessClassifications < ActiveRecord::Migration[5.0]
  def change
    create_table :line_of_business_classifications do |t|
      t.string :name

      t.timestamps
    end
  end
end
