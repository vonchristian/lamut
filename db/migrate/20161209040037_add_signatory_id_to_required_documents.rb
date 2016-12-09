class AddSignatoryIdToRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :required_documents, :signatory_id, :integer
    add_index :required_documents, :signatory_id
  end
end
