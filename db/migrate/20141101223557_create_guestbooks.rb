class CreateGuestbooks < ActiveRecord::Migration
  def change
    create_table :guestbooks do |t|
      t.string :Name
      t.text :Message

      t.timestamps
    end
  end
end
