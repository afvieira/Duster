class CreateUtilizadores < ActiveRecord::Migration
  def change
    create_table :utilizadores do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.integer :cc , unique:true, null:false
      t.integer :cellphone, unique:true, null:false
      t.integer :homephone,
      t.string  :email, unique:true, null:false
      t.date    :date_of_birth, null:false
      t.date    :date_of_register, null:false
      t.date    :date_of_last_acess, null:false
      t.integer :name_of_user,
      t.string  :photo, unique:true
      t.
    end
  end
end
