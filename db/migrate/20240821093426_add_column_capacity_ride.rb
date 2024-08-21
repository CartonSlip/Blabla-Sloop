class AddColumnCapacityRide < ActiveRecord::Migration[7.1]
  def change
    add_column :rides, :capacity, :integer
  end
end
