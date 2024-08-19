class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :receiver, null: false, foreign_key: { to_table: :users }
      t.references :poster, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
