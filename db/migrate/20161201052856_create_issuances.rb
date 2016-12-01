class CreateIssuances < ActiveRecord::Migration[5.0]
  def change
    create_table :issuances do |t|
      t.belongs_to :required_document, foreign_key: true
      t.date :date_issued
      t.date :expiry_date
      t.string :reference_number
      t.integer :recipient_id
      t.string :recipient_type

      t.timestamps
    end
    add_index :issuances, :recipient_id
    add_index :issuances, :recipient_type
  end
end
