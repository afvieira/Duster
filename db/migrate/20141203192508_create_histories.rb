class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :state
      t.date :date
      t.timestamps
    end
  end
end
