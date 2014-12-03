class CreateAddicionalInformations < ActiveRecord::Migration
  def change
    create_table :addicional_informations do |t|
      t.string :description
      t.timestamps
    end
  end
end
