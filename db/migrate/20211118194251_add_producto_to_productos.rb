class AddProductoToProductos < ActiveRecord::Migration[6.1]
  def change
    add_column :productos, :foto, :string
  end
end
