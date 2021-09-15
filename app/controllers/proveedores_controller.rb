class ProveedoresController < ApplicationController
    def new
        @proveedor = Proveedor.new   
    end

    def index
        @proveedor = Proveedor.all
    end

    def show
        @proveedor = Proveedor.find(params[:id])           
    end

    def create
        @proveedor = Proveedor.new( proveedor_params)
        if @proveedor.save 
            redirect_to proveedor_path(@proveedor)
        else
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
          redirect_to @proveedor
        else
          render 'edit'
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
        if @proveedor.destroy
            flash[:success] = 'proveedor was successfully deleted.'
            redirect_to proveedor_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to proveedor_url
        end
    end

end
