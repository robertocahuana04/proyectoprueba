class ProductosController < ApplicationController

  before_action :authenticate_user!

  # before_action :authenticate_user!, only: [:index]

  # Método GET  para  el formulario de nuevo producto 
  def new
    @producto = Producto.new   
  end

   # Método GET para obtener todos los productos de la base de datos
  def index
    @producto = Producto.all
  end

  #encontrar un registro por id
  def show
    @producto = Producto.find(params[:id])           
  end

  # Método GET  para  editar un producto basado en id
  def edit
    @producto = Producto.find(params[:id])
  end

  # Método POST  para  procesar datos de formularios 
  def create   
    @producto = Producto.new(producto_params)   
    if @producto.save   
      flash[:notice] = 'Producto agregado!'   
      redirect_to @producto 
    else   
      flash[:error] = 'No se pudo editar el productos!'   
      render "new"   
    end   
  end   

  def update
    @producto = Producto.find(params[:id])
    if @producto.update(producto_params)
      flash[:notice] = 'producto atualizado!'
      redirect_to @producto
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy  
    @producto = Producto.find(params[:id])   
    if @producto.destroy 
      flash[:notice] = '¡Producto eliminado!'  
      redirect_to  @producto
    else    
      render "destroy"   
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
      :tipo_id
    )
  end
  
end

