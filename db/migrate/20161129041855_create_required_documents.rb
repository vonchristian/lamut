class CreateRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :required_documents do |t|
      t.string :type
      t.date :date_issued
      t.date :expiry_date
      t.string :office_or_agency
      t.string :reference_number, unique: true

      t.timestamps
    end
  end
end
