class CreateServiceProviderPremia < ActiveRecord::Migration
  def change
    create_table :service_provider_premia do |t|

      t.timestamps
    end
  end
end
