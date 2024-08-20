class AddStatusPendingToRide < ActiveRecord::Migration[7.1]
  def change
    change_column :traveller_rides, :validate_status, :string, default: "pending"
  end
end
