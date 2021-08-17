class CreatePersonas < ActiveRecord::Migration[6.1]
  def change
    create_table :personas do |t|
      t.string :celular
      t.string :genero
      t.datetelefono :fechanacimiento

      t.timestamps
    end
  end
end
