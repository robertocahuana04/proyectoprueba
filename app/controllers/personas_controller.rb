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
    @persona = Persona.new(persona_params)
    if @persona.save
      flash[:notice] = "persona was submitted succsefully"
      redirect_to personas_path
    else
      render :new
    end
  end

  def update
    @persona = Persona.find(params[:id])
    if @persona.update(persona_params)
      redirect_to @persona
    else
      @persona = Persona.all
      render "edit", status: :unprocessable_entity
    end
  end


  def destroy  
    @persona = Persona.find(params[:id])   
    if @persona.destroy 
      flash[:notice] = '¡persona eliminado!'  
      redirect_to persona_path 
    else   
      flash[:error] = '¡Error al eliminar este persona!'   
      render "destroy"   
    end   
  end
  
  private

  def persona_params
    params.require(:persona).permit(
      :cedula,
      :fecha_nacimiento,
      :telefono,
      :genero_id
    )
  end
end
