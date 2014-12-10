class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      #NO esquema da base de dados tem entradas duplicadas
      t.integer :value
      t.timestamps
    end
  end
end
