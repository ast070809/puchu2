class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :deg_type
      t.string :subject
      t.string :year
      t.integer :user_id
      t.integer :college_id
      t.string :deg_time

      t.timestamps
    end
  end
end
