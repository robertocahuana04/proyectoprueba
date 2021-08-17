class CreateProveedors < ActiveRecord::Migration[6.1]
  def change
    create_table :proveedors do |t|
      t.int :codigo
      t.string :nombre
      t.string :correoeletronico
      t.int :telefono
      t.string :direccion
      t.int :ciudad
      t.int :destinatario

      t.timestamps
    end
  end
end
