class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer  :user_id
      t.integer  :zip_code
      t.string   :city
      t.string   :street
      t.integer  :door_number
      t.string   :district
      t.timestamps
    end
    add_index :addresses, :user_id
  end
end
