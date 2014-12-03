class CreateServiceTypeServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_type_service_providers do |t|

      t.float :value
      t.timestamps
    end
  end
end
