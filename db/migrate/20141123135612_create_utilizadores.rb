class CreateUtilizadores < ActiveRecord::Migration
  def change
    create_table :utilizadores do |t|
      t.string :name, null:false
      t.string :address, null:false
      t.integer :cc , null:false #has to be unique
      t.integer :cellphone, null:false #has to be unique
      t.integer :homephone
      t.string  :email, null:false #has to be unique
      t.date    :date_of_birth, null:false
      t.date    :date_of_register, null:false
      t.date    :date_of_last_acess, null:false
      t.integer :name_of_user
      t.string  :photo #has to be unique put in model
      #t.integer :type, null:false o has_one no model poem o tipo?
      t.integer :zip_code, null:false


      #t.timestamps Pomos isto?
      #adiciona dois campos created_at e updated_at
    end
    #se utilizarmos unique nos fields apenas o rails faz um select a db e verifica se é unico.

    #para se adicionar uma constrain de uniqueness na db é assim
    #http://robots.thoughtbot.com/the-perils-of-uniqueness-validations
    #Não sei se devemo ter tantos indixes uma vez que fazem a inserção de dados mais lenta
    add_index :utilizadores, :cc, unique: true
    add_index :utilizadores, :cellphone, unique:true
    add_index :utilizadores, :email, unique:true
    add_index :utilizadores, :photo, unique:true
  end
end
