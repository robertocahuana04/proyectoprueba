class ProveedoresController < ApplicationController
    

    def new
        @proveedor = Proveedor.new   
    end

    def index
        @proveedor = Proveedor.all
        respond_to do |format|
            format.html
            format.xml { render :xml => @proveedor }
        end
    end

    def show
        @proveedor = Proveedor.find(params[:id])           
    end

    def create   
        @proveedor = Proveedor.new(proveedor_params)   
        if @proveedor.save   
          flash[:notice] = 'Proveedor agregado!'   
          redirect_to proveedor_path(@proveedor)   
        else   
          flash[:error] = 'No se pudo editar el proveedor!'   
          render :new   
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

    def edit
        @proveedor = Proveedor.find(params[:id])
    end


    def update
        @proveedor = Proveedor.find(params[:id])
       
        if @proveedor.update(proveedor_params)
          redirect_to proveedor_path(@proveedore)
        else
          render 'edit', status: :unprocessable_entity
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

    def destroy   
        @proveedor = Proveedor.find(params[:id])   
        if @proveedor.delete   
          flash[:notice] = '¡Proveedor eliminado!'  
          redirect_to proveedor_path(@proveedor)   
        else   
          flash[:error] = '¡Error al eliminar este Proveedor!'   
          render :destroy   
        end   
    end

end
