class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
