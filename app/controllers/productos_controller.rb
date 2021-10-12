class ProductosController < ApplicationController


  before_action :authenticate_user!

  # before_action :authenticate_user!, only: [:index]

  #get /producto/new
  def new
    @producto = Producto.new   
  end

  #todo los registro SELET FRON productos
  def index
    @producto = Producto.all
  end

  #encontrar un registro por id
  def show
    @producto = Producto.find(params[:id])           
  end

  # GET /products/id/edit
  def edit
    @producto = Producto.find(params[:id])
  end

  # POST /products
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
 
  # PATCH/PUT /products/id
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
 
  # DELETE /products/id
  def destroy  
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
