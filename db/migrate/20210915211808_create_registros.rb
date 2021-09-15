class CreateRegistros < ActiveRecord::Migration[6.1]
  def change
    create_table :registros do |t|
      t.integer :identificacion
      t.string :nombre
      t.string :correo_electronico
      t.string :fecha_de_nacimiento
      t.string :direccion
      t.string :cargo
      t.string :ciudad

      t.timestamps
    end
  end
end
