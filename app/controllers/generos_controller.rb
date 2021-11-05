class GenerosController < ApplicationController 
  
  def new
    @genero = Genero.new   
  end
  
  # Método GET para obtener todos los generos de la base de datos
  def index
    @genero = Genero.all
  end
  
  #encontrar un registro por id
  def show
    @genero = Genero.find(params[:id])           
  end
  
  # Método GET  para  editar un genero basado en id
  def edit
    @genero = Genero.find(params[:id])
  end

  # Método POST  para  procesar datos de formularios 
  def create   
    @genero = Genero.new(genero_params)   
    if @genero.save   
      flash[:notice] = 'genero agregado!'   
      redirect_to @genero   
    else  
      render "new"   
    end   
  end   

  def update
    @genero = Genero.find(params[:id])
    if @genero.update(genero_params)
      flash[:notice] = 'genero atualizado!'
      redirect_to @genero
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy  
    @genero = Genero.find(params[:id])   
    if @genero.destroy 
      flash[:notice] = '¡genero eliminado!'  
      redirect_to  @genero 
    else   
      flash[:error] = '¡Error al eliminar este genero!'   
      render "destroy"   
    end   
  end

  private

  def genero_params
    params.require(:genero).permit(
      :genero,
    )
  end   

end    