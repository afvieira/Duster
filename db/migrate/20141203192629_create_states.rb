class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description
      t.string :tag
      t.timestamps
    end
  end
end
