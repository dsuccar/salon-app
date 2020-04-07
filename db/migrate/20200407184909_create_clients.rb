class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :member_since

      t.timestamps
    end
  end
end
