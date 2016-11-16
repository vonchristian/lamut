class CreateBusinessClassifications < ActiveRecord::Migration[5.0]
  def change
    create_table :business_classifications do |t|
      t.string :name

      t.timestamps
    end
  end
end
