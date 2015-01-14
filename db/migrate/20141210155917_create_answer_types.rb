class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.string :answer_type
      t.integer :answer_id
      t.timestamps
    end
    add_index :answer_types, :answer_id
  end
end
