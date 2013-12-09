class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :deg_type
      t.string :subject
      t.string :university
      t.string :year

      t.timestamps
    end
  end
end
