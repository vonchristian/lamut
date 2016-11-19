class AddLogoToMunicipalities < ActiveRecord::Migration[5.0]
  def up
    add_attachment :municipalities, :logo
  end

  def down
    remove_attachment :municipalities, :logo
  end
end
