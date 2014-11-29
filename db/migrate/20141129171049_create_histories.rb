class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.date :date
      t.timestamps
    end
  end
end
