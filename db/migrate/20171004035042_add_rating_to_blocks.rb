class AddRatingToBlocks < ActiveRecord::Migration[5.0]
  def change
    add_column :blocks, :rating, :float
  end
end
