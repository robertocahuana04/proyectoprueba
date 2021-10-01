class PersonasController < ApplicationController

    
    
    def new
        @persona = Persona.new   
    end

    def index
        @persona = Persona.all
    end

    def show
        @persona = Persona.find(params[:id])           
    end

    def edit
        @persona = Persona.find(params[:id])
    end

    def create
        @persona = Persona.new( persona_params)
        if @persona.save 
        redirect_to personas_path
        else
            render :new
        end
    end

    private

    def persona_params
        params.require(:persona).permit(
          :cedula,
          :genero,
          :fecha_nacimiento,
          :telefono,
        )
    end


    def destroy
        @persona = Persona.find(params[:id])
        @persona.destroy
        redirect_to action: :index
    end
    
    private

    def persona_params
        params.require(:persona).permit(
          :cedula,
          :genero,
          :fecha_nacimiento,
          :telefono,
        )
    end


end
