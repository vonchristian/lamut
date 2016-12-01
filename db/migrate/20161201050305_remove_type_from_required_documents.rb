class RemoveTypeFromRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :required_documents, :type, :string
    remove_column :required_documents, :date_issued, :date
    remove_column :required_documents, :expiry_date, :date
    remove_column :required_documents, :office_or_agency, :string
    remove_column :required_documents, :documentable_type, :string
    remove_column :required_documents, :documentable_id, :integer
  end
end
