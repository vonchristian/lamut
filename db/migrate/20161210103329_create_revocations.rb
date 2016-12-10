class CreateRevocations < ActiveRecord::Migration[5.0]
  def change
    create_table :revocations do |t|
      t.belongs_to :business, foreign_key: true
      t.string :violation
      t.datetime :revoked_at

      t.timestamps
    end
  end
end
