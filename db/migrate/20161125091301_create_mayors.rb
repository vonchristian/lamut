class CreateMayors < ActiveRecord::Migration[5.0]
  def change
    create_table :mayors do |t|
      t.belongs_to :municipality, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.timestamps
    end
  end
end
