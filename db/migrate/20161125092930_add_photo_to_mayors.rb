class AddPhotoToMayors < ActiveRecord::Migration[5.0]
  def up
    add_attachment :mayors, :photo
  end

  def down
    remove_attachment :mayors, :photo
  end
end
