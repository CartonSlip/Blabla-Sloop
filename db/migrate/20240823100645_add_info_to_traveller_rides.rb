class AddInfoToTravellerRides < ActiveRecord::Migration[7.1]
  def change
    add_column :traveller_rides, :info, :text
  end
end
