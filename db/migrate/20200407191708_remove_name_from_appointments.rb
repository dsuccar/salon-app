class RemoveNameFromAppointments < ActiveRecord::Migration[6.0]
  def change

    remove_column :appointments, :name, :string
  end
end
