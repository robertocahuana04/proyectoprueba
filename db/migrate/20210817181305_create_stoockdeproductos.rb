class CreateStoockdeproductos < ActiveRecord::Migration[6.1]
  def change
    create_table :stoockdeproductos do |t|
      t.int :codigo
      t.text :proveedor
      t.int :cantidadexistente
      t.string :referencia
      t.text :tipo
      t.string :nombre

      t.timestamps
    end
  end
end
