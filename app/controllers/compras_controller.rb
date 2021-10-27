class ComprasController < ApplicationController

    def new
        @compra = Compra.new   
    end

    def index
        @compra = Compra.all
    end

    def show
        @compra = Compra.find(params[:id])           
    end

    def create
        @compra = Compra.new( compra_params)
        if @compra.save 
            redirect_to @compra
        else
            render :new
        end
    end
     

    def edit
        @compra = Compra.find(params[:id])
    end


    def update
        @compra = Compra.find(params[:id])
       
        if @compra.update(compra_params)
          redirect_to @compra
        else
          render 'edit'
        end
    end


    def destroy
        @compra = Compra.find(params[:id])
        if @compra.destroy
            flash[:success] = 'compras was successfully deleted.'
            redirect_to compra_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to compra_url
        end
    end

    private

    def compra_params
        params.require(:compra).permit(
          :codigo_producto,
          :nombre_del_cliente,
          :identificacion_del_cliente,
          :fecha_de_compra,
          :tipo_producto,
          :forma_de_pago,
        )
    end
end
