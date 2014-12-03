class CreatePaymentTypes < ActiveRecord::Migration
  def change
    create_table :payment_types do |t|
      t.integer :description
      t.timestamps
    end
  end
end
