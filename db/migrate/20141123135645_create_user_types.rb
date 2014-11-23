class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :description, null:false
      t.string :tag, null:false
      t.timestamps
    end
  end
end
