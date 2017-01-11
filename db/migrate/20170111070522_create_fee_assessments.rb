class CreateFeeAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :fee_assessments do |t|
      t.belongs_to :business, foreign_key: true
      t.belongs_to :entry, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
