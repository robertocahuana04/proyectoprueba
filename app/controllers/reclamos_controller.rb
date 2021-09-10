class ReclamosController < ApplicationController

    def index
        @reclamo = Reclamo.new   
    end

    def create

        @Reclamo = Reclamo.new( reclamo_params)
        if @Reclamo.save 
            redirect_to reclamo_path(@Reclamo)
        else
            render :new
        end
    end

    def show
        
    end
     
    private

    def reclamo_params
        params.require(:reclamo).permit(
          :codigo,
          :identificacion_del_cliente,
          :nombre_del_cliente,
          :producto_adquirido,
          :fecha_de_compra,
          :estado_del_producto,
        )
      end
end
