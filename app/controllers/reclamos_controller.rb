class ReclamosController < ApplicationController
    def new
        @reclamo = Reclamo.new
    end

    def index
       @reclamo = Reclamo.all
    end

    def show
        @reclamo = Reclamo.find(params[:id])  
    end

    def create
        @reclamo = Reclamo.new( reclamo_params)
        if @reclamo.save 
            redirect_to reclamo_path(@reclamo)
        else
            render :new
        end
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
