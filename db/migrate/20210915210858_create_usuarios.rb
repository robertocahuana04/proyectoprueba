class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.integer :identificacion
      t.string :nombre
      t.integer :telefono
      t.string :direccion
      t.integer :reclamo_id
      t.integer :registrodetrabajadore_id
      t.integer :registro_id

      t.timestamps
    end
  end
end
