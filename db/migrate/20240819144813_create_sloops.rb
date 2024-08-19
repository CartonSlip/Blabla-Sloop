class CreateSloops < ActiveRecord::Migration[7.1]
  def change
    create_table :sloops do |t|
      t.integer :capacity
      t.string :category
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
