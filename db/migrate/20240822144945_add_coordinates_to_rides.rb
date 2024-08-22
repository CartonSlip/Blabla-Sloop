class AddCoordinatesToRides < ActiveRecord::Migration[7.1]
  def change
    add_column :rides, :start_port_latitude, :float
    add_column :rides, :start_port_longitude, :float
    add_column :rides, :end_port_latitude, :float
    add_column :rides, :end_port_longitude, :float
  end
end
