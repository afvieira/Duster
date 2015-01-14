class CreateServiceTypeServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_type_service_providers do |t|
    	t.integer :service_provider_id
    	t.integer :service_type_id
      t.float :value
      t.timestamps
    end
    add_index :service_type_service_providers, :service_type_id
    add_index :service_type_service_providers, :service_provider_id

  end
end
