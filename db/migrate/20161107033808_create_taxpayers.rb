class CreateTaxpayers < ActiveRecord::Migration[5.0]
  def change
    create_table :taxpayers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :mobile_number
      t.string :email
      t.date :date_of_birth
      t.integer :sex

      t.timestamps
    end
  end
end
