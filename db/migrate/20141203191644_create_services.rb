class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :user_id
      t.integer :service_provider_id
      t.integer :service_type_id
      t.integer :state

      t.date :service_date #dia em que o servico ira acontecer
      t.datetime :matching_date #datetime em que o servico foi proposto
      t.datetime :creation_date #datetime em que a maid aceitou o servico
      t.time :service_start     #hora de inicio do servico
      t.time :service_end       #hora de fim do servico
      
      t.integer :zip_code
      t.string :district
      t.string :city
      t.string :street
      t.string :door_number
      t.string :country  
      t.string :perish
      t.string :preference
      t.string :address, null:false
      t.decimal :lat, null:false
      t.decimal :long, null:false

      t.integer  :number_of_rooms
      t.integer  :building_type
      t.integer  :frequency
      t.integer :time_pretended
      t.boolean  :cleaning_stuff
      t.text   :additional_information
      t.timestamps
    end
    add_index :services, :user_id
    add_index :services, :service_provider_id
    add_index :services, :service_type_id
  end
end
