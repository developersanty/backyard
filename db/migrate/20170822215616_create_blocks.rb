class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.integer :day
      t.string :status

      t.timestamps
    end
  end
end
