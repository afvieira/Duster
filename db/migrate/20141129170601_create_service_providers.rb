class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|

      t.timestamps
    end
  end
end
