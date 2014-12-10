class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string     :name #Person real name
      t.integer    :cc
      t.integer    :cell_phone
      t.integer    :phone
      t.string     :email
      t.date       :birth_date
      t.timestamps :registration_date
      t.timestamps :last_access_date
      t.string :photo
    end
    add_index :users, :cc,   unique: true
    add_index :users, :cell_phone, unique:true
    add_index :users, :email,  unique:true
  end
end
