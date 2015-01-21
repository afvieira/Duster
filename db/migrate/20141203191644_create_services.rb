class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :user_id
      t.integer :service_provider_id
      t.integer :service_type_id
      t.integer :answer_id

      t.integer :state
      t.date :service_date
      t.datetime :matching_date
      t.datetime :creation_date
      t.time :service_start
      t.time :service_end
      t.integer :zip_code
      t.string :country
      t.string :district
      t.string :perish
      t.string :preference
      t.string :city, null:false
      t.string :street, null:false
      t.string :doorNumber, null:false
      t.string :district, null:false
      t.integer :number_of_rooms
      t.string  :buildingType
      t.string  :frequency
      t.integer :timePretended
      t.boolean :cleaningStuff
      t.string  :additional_information
      t.timestamps
    end
    add_index :services, :user_id
    add_index :services, :service_provider_id
    add_index :services, :service_type_id
    add_index :services, :answer_id
  end
end
