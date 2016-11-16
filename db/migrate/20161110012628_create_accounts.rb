class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :code, unique: true, index: true
      t.string :type
      t.string :name, unique: true, null: false
      t.boolean :contra, default: false

      t.timestamps
    end
  end
end
