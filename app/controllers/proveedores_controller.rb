class ProveedoresController < ApplicationController
    
  #get /proveedores/new 
  def new
    @proveedor = Proveedor.new   
  end

  #todo los registro SELET FRON proveedor
  def index
    @proveedor = Proveedor.all
  end

  def show
    #encontrar un registro por id
    @proveedor = Proveedor.find(params[:id])           
  end

  def edit
    @proveedor = Proveedor.find(params[:id])
  end

  def create   
    @proveedor = Proveedor.new(proveedor_params)   
    if @proveedor.save   
      flash[:notice] = 'Proveedor agregado!'   
      redirect_to (@proveedor)   
    else      
      render "new"   
    end   
  end

  def update
      @proveedor = Proveedor.find(params[:id])
      if @proveedor.update(proveedor_params)
        redirect_to @proveedor , :notice => 'Proveedor fue actualizado con éxito.'
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
