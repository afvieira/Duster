class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.hour :begining_hour
      t.hour :ending_hour
      t.timestamps
    end
  end
end
