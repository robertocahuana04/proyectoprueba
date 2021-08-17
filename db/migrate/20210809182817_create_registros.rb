class CreateRegistros < ActiveRecord::Migration[6.1]
  def change
    create_table :registros do |t|
      t.int :identificacion
      t.string :nombre
      t.string :correo
      t.date :fechanaciiento
      t.string :direccion
      t.string :cargo
      t.string :ciudad

      t.timestamps
    end
  end
end
