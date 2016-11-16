class CreateLineOfBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :line_of_businesses do |t|
      t.string :name
      t.belongs_to :business, foreign_key: true

      t.timestamps
    end
  end
end
