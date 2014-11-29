class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
      t.date :initial_date, null:false
      #pk que se tirou a data do fim ?
      t.date :end_date, null:false
      t.timestamps
    end
  end
end
