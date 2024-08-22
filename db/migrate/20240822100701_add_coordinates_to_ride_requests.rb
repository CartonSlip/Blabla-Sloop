class AddCoordinatesToRideRequests < ActiveRecord::Migration[7.1]
  def change
    add_column :ride_requests, :start_port_latitude, :float
    add_column :ride_requests, :start_port_longitude, :float
    add_column :ride_requests, :end_port_latitude, :float
    add_column :ride_requests, :end_port_longitude, :float
  end
end
