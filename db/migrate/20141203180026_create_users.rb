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
    add_index :cc, :cell_phone, :email, unique: true
  end
end
