class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :state, null:false
      t.date    :service_date, null:false
      t.date    :matching_date, null:false
      t.date    :creation_date, null:false
      #t.string  :comment_of_employee
      #t.string  :comment_of_client
      #t.string  :employee_rating #nao deveria ser tipo de serviço?
      t.string  :location, null:false
      t.timestamps
    end
  end
end
