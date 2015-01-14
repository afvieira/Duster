class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
    	t.integer :user_id
    	t.integer :answer_type_id
      t.string :answer
      t.timestamps
    end
    add_index :answers, :user_id
    add_index :answers, :answer_type_id
  end
end
