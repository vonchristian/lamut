class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.belongs_to :province, foreign_key: true
      t.string :name
      t.integer :zip_code

      t.timestamps
    end
  end
end
