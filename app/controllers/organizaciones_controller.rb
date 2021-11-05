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
      @organizacione = Organizacione.new(organizacione_params)
      if @organizacione.save
        flash[:notice] = 'organizacion agregado!' 
        redirect_to   @organizacione
      else
        render :new
      end
    end
     
    
    def update
      @organizacione = Organizacione.find(params[:id])
      if @organizacione.update(organizacione_params)
        flash[:notice] = 'organizacion atualizada!'
        redirect_to @organizacione
      else
        render "edit", status: :unprocessable_entity
      end
    end

    def destroy
      @organizacione = Organizacione.find(params[:id])
      if @organizacione.destroy
        flash[:notice] = 'la organizacione fue eliminado con éxito'
        redirect_to  @organizacione
      else
        redirect_to "destroy"
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
