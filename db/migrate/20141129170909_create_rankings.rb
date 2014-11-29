class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.integer :value
      t.timestamps
    end
  end
end
