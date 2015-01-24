class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
    	t.integer :service_provider_id
    	t.integer :service_id
      t.string :description
      t.timestamps
    end
    add_index :feedbacks, :service_provider_id
    add_index :feedbacks, :service_id
  end
end
