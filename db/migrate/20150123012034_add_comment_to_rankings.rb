class AddCommentToRankings < ActiveRecord::Migration
  def change
    add_column :rankings, :comment, :string
  end
end
