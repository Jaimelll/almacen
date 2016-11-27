class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :ruc
      t.text :razon
      t.text :direccion
      t.integer :origen
      t.text :obs

      t.timestamps
    end
  end
end
