class CreateTimeTables < ActiveRecord::Migration
  def change
    create_table :time_tables do |t|
      t.integer :service_provider_id 
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
