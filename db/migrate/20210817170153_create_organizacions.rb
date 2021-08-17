class CreateOrganizacions < ActiveRecord::Migration[6.1]
  def change
    create_table :organizacions do |t|
      t.string :tipoorganizacion
      t.int :numeroempleados
      t.string :representante

      t.timestamps
    end
  end
end
