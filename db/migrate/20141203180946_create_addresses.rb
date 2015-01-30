class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer  :user_id
      t.string   :zip_code
      t.string   :city
      t.string   :street
      t.integer  :door_number
      t.string   :district
      t.string :address, null:false
      t.decimal :lat, null:false
      t.decimal :long, null:false
      t.timestamps
    end
    add_index :addresses, :user_id
  end
end
