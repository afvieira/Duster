class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      #Put relation for User table
      t.integer  :zip_code
      t.string   :city
      t.string   :street
      t.integer  :door_number
      t.string   :district
      t.timestamps
    end
  end
end
