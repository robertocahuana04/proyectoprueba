class CreateRegistrodetrabajadores < ActiveRecord::Migration[6.1]
  def change
    create_table :registrodetrabajadores do |t|
      t.string :nombre
      t.integer :edad
      t.string :cargo
      t.integer :telefono

      t.timestamps
    end
  end
end
