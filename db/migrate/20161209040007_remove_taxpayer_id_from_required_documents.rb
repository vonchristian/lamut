class RemoveTaxpayerIdFromRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :required_documents, :taxpayer_id, :integer
    remove_column :required_documents, :reference_number, :string
  end
end
