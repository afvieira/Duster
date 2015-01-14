class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.integer :service_provider_id
    	t.integer :slot_id
    	t.integer :day_id
      t.boolean :availability
      t.timestamps
    end
  end
end
