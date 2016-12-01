class AddDefaultToRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :required_documents, :default, :boolean, default: false
  end
end
