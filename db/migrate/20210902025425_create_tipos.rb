class CreateTipos < ActiveRecord::Migration[6.1]
  def change
    create_table :tipos do |t|
      t.string :tipo
      t.boolean :estado

      t.timestamps
    end
  end
end
