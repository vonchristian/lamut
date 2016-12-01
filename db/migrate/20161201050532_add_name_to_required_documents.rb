class AddNameToRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :required_documents, :name, :string
  end
end
