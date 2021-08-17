class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.int :identificacion
      t.string :nombre
      t.int :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
