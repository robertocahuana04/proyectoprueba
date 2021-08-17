class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.int :codigo
      t.string :nombre
      t.string :referencia
      t.string :stock
      t.text :remitente
      t.string :tipo

      t.timestamps
    end
  end
end
