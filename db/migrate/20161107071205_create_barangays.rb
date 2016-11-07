class CreateBarangays < ActiveRecord::Migration[5.0]
  def change
    create_table :barangays do |t|
      t.belongs_to :municipality, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
