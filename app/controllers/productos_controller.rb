class ProductosController < ApplicationController


  before_action :authenticate_user!

  # before_action :authenticate_user!, only: [:index]

  def new
    #get /producto/new
      @producto = Producto.new   
  end

  def index
    #todo los registro SELET FRON productos
    @producto = Producto.all
  end

  def show
    #encontrar un registro por id
      @producto = Producto.find(params[:id])           
  end

  def edit
    @producto = Producto.find(params[:id])
  end

  def create   
      @producto = Producto.new(producto_params)   
      if @producto.save   
        flash[:notice] = 'Producto agregado!'   
        redirect_to (@producto)   
      else   
        flash[:error] = 'No se pudo editar el productos!'   
        render "new"   
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
      )
  end

  
  def update
      @producto = Producto.find(params[:id])
      if @producto.update(producto_params)
        redirect_to @producto
      else
        @producto = Producto.all
        render "edit", status: :unprocessable_entity
      end
  end

  private

  def producto_params
      params.require(:producto).permit(
        :codigo,
        :nombre,
        :referencia,
        :stock,
        :remitente
      )
  end
   
  def destroy 
      #DELETE /producto/id  
      @producto = Producto.find(params[:id])   
      if @producto.destroy   #Destroy eliminar el objeto de la BD
        flash[:notice] = '¡Producto eliminado!'  
        redirect_to producto_path 
      else   
        flash[:error] = '¡Error al eliminar este Producto!'   
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
      )
  end
end
