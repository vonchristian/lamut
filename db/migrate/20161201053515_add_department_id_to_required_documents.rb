class AddDepartmentIdToRequiredDocuments < ActiveRecord::Migration[5.0]
  def change
    add_reference :required_documents, :department, foreign_key: true
  end
end
