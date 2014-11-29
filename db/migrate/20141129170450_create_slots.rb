class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      #o ruby tem um datetime acho eu nao seria melhor ?
      #pk que isto nao pode estar dentro do schedule
      t.integer :hour
      t.string  :string
      t.string  :month
      t.timestamps
    end
  end
end
