class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
    	t.integer :user_id
      t.integer :service_id
      t.integer :value
      t.timestamps
    end
    add_index :rankings, :user_id
    add_index :rankings, :service_id
  end
end
