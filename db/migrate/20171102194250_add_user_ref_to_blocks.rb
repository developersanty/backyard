class AddUserRefToBlocks < ActiveRecord::Migration[5.0]
  def change
    add_reference :blocks, :user, foreign_key: true
  end
end
