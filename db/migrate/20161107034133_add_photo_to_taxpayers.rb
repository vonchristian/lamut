class AddPhotoToTaxpayers < ActiveRecord::Migration[5.0]
  def up
    add_attachment :taxpayers, :photo
  end

  def down
    remove_attachment :taxpayers, :photo
  end
end
