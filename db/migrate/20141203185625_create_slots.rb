class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.time :begining_hour
      t.time :ending_hour
      t.timestamps
    end
  end
end
