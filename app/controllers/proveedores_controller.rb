class ProveedoresController < ApplicationController
    def new
        @proveedor = Proveedor.new   
    end

    def create

        @proveedor = Proveedor.new( proveedor_params)
        if @proveedor.save 
            redirect_to proveedor_path(@proveedor)
        else
            render :new
        end
    end

    def show
        
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
