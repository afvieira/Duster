class CreateServiceProviderPremia < ActiveRecord::Migration
  def change
    create_table :service_provider_premia do |t|
    	t.integer :service_provider_id
    	t.integer :premium_id
      t.timestamps
    end
    add_index :service_provider_premia, :service_provider_id
    add_index :service_provider_premia, :premium_id
  end
end
