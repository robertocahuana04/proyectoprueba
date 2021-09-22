class StoockdeproductosController < ApplicationController

    def new
        @stoockdeproducto = Stoockdeproducto.new   
    end

    def index
        @stoockdeproducto = Stoockdeproducto.all
    end

    def show
        @stoockdeproducto = Stoockdeproducto.find(params[:id])           
    end

    def create
        @stoockdeproducto = Stoockdeproducto.new( stoockdeproducto_params)
        if @stoockdeproducto.save 
            redirect_to stoockdeproducto_path(@stoockdeproducto)
        else
            render :new
        end
    end
     
    private

    def stoockdeproducto_params
        params.require(:stoockdeproducto).permit(
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
        @stoockdeproducto = Stoockdeproducto.find(params[:id])
    end


    def update
        @stoockdeproducto = Stoockdeproducto.find(params[:id])
       
        if @stoockdeproducto.update(stoockdeproducto_params)
          redirect_to @stoockdeproducto
        else
          render 'edit'
        end
    end

    private

    def stoockdeproducto_params
        params.require(:stoockdeproducto).permit(
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
        @stoockdeproducto = Stoockdeproducto.find(params[:id])
        if @stoockdeproducto.destroy
            flash[:success] = 'stoockdeproducto was successfully deleted.'
            redirect_to stoockdeproducto_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to stoockdeproducto_url
        end
    end
end
