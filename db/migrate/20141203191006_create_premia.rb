class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
    	t.integer :payment_type_id
      t.string :description
      t.date :date
      t.timestamps
    end
    add_index :premia, :payment_type_id
  end
end