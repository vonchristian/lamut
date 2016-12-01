class CreateBusinessRequirements < ActiveRecord::Migration[5.0]
  def change
    create_table :business_requirements do |t|
      t.belongs_to :required_document, foreign_key: true
      t.belongs_to :business, foreign_key: true

      t.timestamps
    end
  end
end
