class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :state
      t.date :service_date
      t.date :matching_date
      t.date :creation_date
      t.integer :zip_code
      t.string :city, null:false
      t.string :street, null:false
      t.string :doorNumber, null:false
      t.string :district, null:false
      t.integer :number_of_rooms
      t.string  :buildingType
      t.string  :frequency
      t.time    :timePretended
      t.boolean :cleaningStuff
      t.string  :additional_information
      t.timestamps
    end
  end
end
