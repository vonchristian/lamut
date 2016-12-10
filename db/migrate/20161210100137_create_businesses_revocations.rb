class CreateBusinessesRevocations < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses_revocations do |t|
      t.datetime :revoked_at
      t.string :violation
      t.belongs_to :business, foreign_key: true

      t.timestamps
    end
  end
end
