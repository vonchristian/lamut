class AddDocumentableToRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :required_documents, :documentable_id, :integer
    add_index :required_documents, :documentable_id
    add_column :required_documents, :documentable_type, :string
    add_index :required_documents, :documentable_type
  end
end
