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
      t.string :district, null:fals
      t.timestamps
    end
  end
end
