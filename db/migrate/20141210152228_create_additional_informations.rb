class CreateAdditionalInformations < ActiveRecord::Migration
  def change
    create_table :additional_informations do |t|
    	t.integer :service_provider_id
      t.string :description
      t.timestamps
    end
    add_index :additional_informations, :service_provider_id
  end
end
