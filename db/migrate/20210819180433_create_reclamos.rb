class CreateReclamos < ActiveRecord::Migration[6.1]
  def change
    create_table :reclamos do |t|
      t.integer :identificaciondelclinte
      t.integer :codigo
      t.string :nombredelcliente
      t.string :productoadquirido
      t.date :fechadecompra
      t.string :estadodelproducto

      t.timestamps
    end
  end
end
