class OrganizacionesController < ApplicationController
    def new
        @organizacione = Organizacione.new   
    end

    def index
        @organizacione = Organizacione.all
    end

    def show
        @organizacione = Organizacione.find(params[:id])           
    end

    def edit
        @organizacione = Organizacione.find(params[:id])
    end

    def create
        @organizacione = Organizacione.new( organizacione_params)
        if @organizacione.save 
            redirect_to organizacione_path(@organizacione)
        else
            render :new
        end
    end
     
    
    def update
        @organizacione = Organizacione.find(params[:id])
        if @organizacione.update(organizacione_params)
          redirect_to @organizacione
        else
          render "edit", status: :unprocessable_entity
        end
    end


    def destroy
        @organizacione = Organizacione.find(params[:id])
        if @organizacione.destroy
            flash[:success] = 'tipo was successfully deleted.'
            redirect_to tipo_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to tipo_url
        end
    end

    private

    def organizacione_params
        params.require(:organizacione).permit(
          :tipo_de_organizacion,
          :numero_de_empleado,
          :representantes,
        )
    end
end
