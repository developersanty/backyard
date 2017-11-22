class AddBlockDateToBlocks < ActiveRecord::Migration[5.0]
  def change
    add_column :blocks, :blockDate, :date
  end
end
