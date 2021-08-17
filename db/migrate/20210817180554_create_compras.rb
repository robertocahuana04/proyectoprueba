class CreateCompras < ActiveRecord::Migration[6.1]
  def change
    create_table :compras do |t|
      t.int :codigoproducto
      t.string :nombredelcliente
      t.int :identificaciondelcliente
      t.date :fechadecompra
      t.text :tipoproducto
      t.boolean :formadepago

      t.timestamps
    end
  end
end
