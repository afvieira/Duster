class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.integer :user_id
      t.string :current_job
      t.float :radius
      t.timestamps
    end
    add_index :service_providers, :user_id
  end
end
