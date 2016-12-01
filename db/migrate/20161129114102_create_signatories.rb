class CreateSignatories < ActiveRecord::Migration[5.0]
  def change
    create_table :signatories do |t|
      t.integer :documentable_id
      t.string :documentable_type
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :position

      t.timestamps
    end
    add_index :signatories, :documentable_id
    add_index :signatories, :documentable_type
  end
end
