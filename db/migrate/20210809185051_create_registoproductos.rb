class Createproductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.int :codigo
      t.string :nombre
      t.string :referencia
      t.int :stock
      t.string :remitente
      t.int :tipo

      t.timestamps
    end
  end
end
