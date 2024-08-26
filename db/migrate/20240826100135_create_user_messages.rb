class CreateUserMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :user_messages do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :chatroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
