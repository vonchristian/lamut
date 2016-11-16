class AddRecorderIdToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :recorder_id, :integer
    add_index :entries, :recorder_id
  end
end
