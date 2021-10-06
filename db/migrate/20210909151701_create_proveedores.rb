class CreateProveedores < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedores do |t|
      t.integer :codigo
      t.string :nombre
      t.string :correoelectronico
      t.integer :telefono
      t.string :direccion
      t.string :ciudad
      t.text :destinario
      t.integer :organizacione_id
      t.integer :persona_id
      t.integer :compra_id

      t.timestamps
    end
  end
end
