class AddLogoToBusinesses < ActiveRecord::Migration[5.0]
  def up
    add_attachment :businesses, :logo
  end

  def down
    remove_attachment :businesses, :logo
  end
  end
