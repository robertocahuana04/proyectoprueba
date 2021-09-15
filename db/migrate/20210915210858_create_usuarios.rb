class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.integer :identificacion
      t.string :nombre
      t.integer :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
