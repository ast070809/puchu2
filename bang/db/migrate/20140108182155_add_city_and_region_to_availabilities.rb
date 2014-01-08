class AddCityAndRegionToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :city, :string
    add_column :availabilities, :region, :string
  end
end
