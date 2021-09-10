class CreatePersonas < ActiveRecord::Migration[6.1]
  def change
    create_table :personas do |t|
      t.integer :cedula
      t.string :genero
      t.text :fecha_nacimiento
      t.integer :telefono

      t.timestamps
    end
  end
end
