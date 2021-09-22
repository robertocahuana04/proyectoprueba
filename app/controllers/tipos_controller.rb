class TiposController < ApplicationController

    def new
        @tipo = Tipo.new   
    end

    def index
        @tipo = Tipo.all
    end

    def show
        @tipo = Tipo.find(params[:id])           
    end

    def create
        @tipo = Tipo.new( tipo_params)
        if @tipo.save 
            redirect_to tipo_path(@tipo)
        else
            render :new
        end
    end
     
    private

    def tipo_params
        params.require(:tipo).permit(
          :tipo,
          :estado,
        )
    end

    def edit
        @tipo = Tipo.find(params[:id])
    end


    def update
        @tipo = Tipo.find(params[:id])
       
        if @tipo.update(tipo_params)
          redirect_to @tipo
        else
          render 'edit'
        end
    end

    private

    def tipo_params
        params.require(:tipo).permit(
          :tipo,
          :estado,
        )
    end

    def destroy
        @tipo = Tipo.find(params[:id])
        if @tipo.destroy
            flash[:success] = 'tipo was successfully deleted.'
            redirect_to tipo_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to tipo_url
        end
    end
end
