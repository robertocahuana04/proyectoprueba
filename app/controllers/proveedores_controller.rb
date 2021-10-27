class ProveedoresController < ApplicationController
    
    
  def new
    #get /proveedores/new
      @proveedor = Proveedor.new   
  end

  def index
    #todo los registro SELET FRON proveedor
    @proveedor = Proveedor.all
  end

  def show
    #encontrar un registro por id
      @proveedor = Proveedor.find(params[:id])           
  end

  def create   
      @proveedor = Proveedor.new(proveedor_params)   
      if @proveedor.save   
        flash[:notice] = 'Proveedor agregado!'   
        redirect_to (@proveedor)   
      else   
        flash[:error] = 'No se pudo editar el proveedor!'   
        render "new"   
      end   
  end

  def edit
    @proveedor = Proveedor.find(params[:id])
  end

  #
  def update
      @proveedor = Proveedor.find(params[:id])
      if @proveedor.update_attributes(params[:proveedor])
        redirect_to @proveedor , :notice => 'Proveedor was successfully updated.'
      else
        render "edit", status: :unprocessable_entity
      end
  end
    
  def destroy 
      #DELETE /proveedor/id  
      @proveedor = Proveedor.find(params[:id])   
      if @proveedor.destroy   #Destroy eliminar el objeto de la BD
        flash[:notice] = '¡Proveedor eliminado!'  
        redirect_to proveedor_path 
      else   
        flash[:error] = '¡Error al eliminar este Proveedor!'   
        render "destroy"   
      end   
  end

  private

  def proveedor_params
      params.require(:proveedor).permit(
        :codigo,
        :nombre,
        :correoelectronico,
        :telefono,
        :direccion,
        :ciudad,
        :destinario,
      )
  end
end
