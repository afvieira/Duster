class CreatePremia < ActiveRecord::Migration
  def change
    create_table :premia do |t|
      t.string :description
      t.date :date
      t.timestamps
    end
  end
end
