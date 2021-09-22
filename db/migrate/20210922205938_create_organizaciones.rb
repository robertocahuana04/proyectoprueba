class CreateOrganizaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :organizaciones do |t|
      t.string :tipo_de_organizacion
      t.string :numero_de_empleado
      t.string :representantes

      t.timestamps
    end
  end
end
