class CreateCompras < ActiveRecord::Migration[6.1]
  def change
    create_table :compras do |t|
      t.integer :codigo_producto
      t.string :nombre_del_cliente
      t.integer :identificacion_del_cliente
      t.date :fecha_de_compra
      t.string :tipo_producto
      t.string :forma_de_pago
      t.integer :stoockdeproducto_id
      t.integer :producto_id

      t.timestamps
    end
  end
end
