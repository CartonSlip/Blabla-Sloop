class CreateRideRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :ride_requests do |t|
      t.date :start_date
      t.string :start_port
      t.date :end_date
      t.string :end_port
      t.float :distance
      t.text :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
