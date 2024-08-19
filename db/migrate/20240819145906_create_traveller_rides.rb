class CreateTravellerRides < ActiveRecord::Migration[7.1]
  def change
    create_table :traveller_rides do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ride, null: false, foreign_key: true
      t.string :validate_status

      t.timestamps
    end
  end
end
