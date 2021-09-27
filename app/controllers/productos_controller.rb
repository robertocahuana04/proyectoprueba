class ProductosController < ApplicationController

  before_action :authenticate_user!

  # before_action :authenticate_user!, only: [:index]

  def index
    @producto = Producto.all
  end

  def show
    @producto = Producto.find(params[:id])
  end

  def new
    @producto = Producto.new
  end

  def create
    @producto = Producto.new( producto_params[:id])
    if @producto.save 
        redirect_to producto_path(@producto)
    else
        render :new
    end
end
 
private

def producto_params
    params.require(:producto).permit(
      :codigo,
      :nombre,
      :referencia,
      :stock,
      :remitente,
      :tipo,
    )
end
end
