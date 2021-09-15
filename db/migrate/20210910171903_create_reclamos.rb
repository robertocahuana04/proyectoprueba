class CreateReclamos < ActiveRecord::Migration[6.1]
  def change
    create_table :reclamos do |t|
      t.integer :codigo
      t.integer :identificacion_del_cliente
      t.string :nombre_del_cliente
      t.string :producto_adquirido
      t.date :fecha_de_compra
      t.boolean :estado_del_producto
      t.timestamps
    end
  end
end
