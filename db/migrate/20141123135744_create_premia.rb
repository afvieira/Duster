class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
      t.date :initial_date, null:false
      t.date :end_date, null:false
      t.timestamps
    end
  end
end
