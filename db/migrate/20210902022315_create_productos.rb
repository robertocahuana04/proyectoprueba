class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.string :codigo
      t.string :nombre
      t.string :referencia
      t.integer :stock
      t.string :remitente
      t.integer :tipo_id

      t.timestamps
    end
  end
end
