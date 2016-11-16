class AddCivilStatusToTaxpayers < ActiveRecord::Migration[5.0]
  def change
    add_column :taxpayers, :civil_status, :integer
  end
end
