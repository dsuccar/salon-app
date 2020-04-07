class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :name
      t.integer :employee_id
      t.integer :client_id
      t.string :service

      t.timestamps
    end
  end
end
