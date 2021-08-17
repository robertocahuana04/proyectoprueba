class CreateRegistrotrabajadores < ActiveRecord::Migration[6.1]
  def change
    create_table :registrotrabajadores do |t|
      t.int :id
      t.string :nombre
      t.int :edad
      t.string :cargo
      t.int :telefono

      t.timestamps
    end
  end
end
