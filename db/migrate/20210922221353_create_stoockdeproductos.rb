class CreateStoockdeproductos < ActiveRecord::Migration[6.1]
  def change
    create_table :stoockdeproductos do |t|
      t.integer :codigo
      t.string :proveedor
      t.integer :cantidad_existente
      t.string :referencia
      t.string :tipo
      t.string :nombre

      t.timestamps
    end
  end
end
