class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
    	t.integer :state_id
    	t.integer :service_id
    	t.integer :answer_id
      t.date :date
      t.timestamps
    end
    add_index :histories, :state_id
    add_index :histories, :service_id
    add_index :histories, :answer_id
  end
end
