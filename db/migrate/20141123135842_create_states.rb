class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description, null:false
      t.string :tag, null:false
      t.timestamps
    end
  end
end
