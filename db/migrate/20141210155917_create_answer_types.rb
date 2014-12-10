class CreateAnswerTypes < ActiveRecord::Migration
  def change
    create_table :answer_types do |t|
      t.string :answer_type
      t.timestamps
    end
  end
end
