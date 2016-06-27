class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.text :message
      t.date :date
      t.datetime :intime
      t.datetime :outtime
      t.float :duration
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
