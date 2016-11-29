class AddTaxpayerIdToRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :required_documents, :taxpayer_id, :integer
    add_index :required_documents, :taxpayer_id
  end
end
