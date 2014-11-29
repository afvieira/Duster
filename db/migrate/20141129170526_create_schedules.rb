class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      #acho que nao existe um tipo bit
      t.integer :disponibility
      t.timestamps
    end
  end
end
