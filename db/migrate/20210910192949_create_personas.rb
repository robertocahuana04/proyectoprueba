class CreatePersonas < ActiveRecord::Migration[6.1]
  def change
    create_table :personas do |t|
      t.integer :cedula
      t.date :fecha_nacimiento
      t.string :genero_id
      t.integer :telefono

      t.timestamps
    end
  end
end
