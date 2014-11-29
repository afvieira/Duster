class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :zipCode
      t.string  :city
      t.string  :street
      t.string  :doorNumber
      t.string  :district
      t.timestamps
    end
  end
end
