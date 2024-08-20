class AddNameToSloop < ActiveRecord::Migration[7.1]
  def change
    add_column :sloops, :name, :string
  end
end
