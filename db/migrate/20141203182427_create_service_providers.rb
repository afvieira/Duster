class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :current_job
      t.float :radius
      t.timestamps
    end
  end
end
