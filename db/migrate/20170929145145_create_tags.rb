class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :value
      t.references :block, foreign_key: true
    end
  end
end
