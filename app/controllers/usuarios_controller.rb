class UsuariosController < ApplicationController

  def new
    @usuario = Usuario.new   
  end
  
  # Método GET para obtener todos los usuarios de la base de datos
  def index
    @usuarios = Usuario.all
  end
  
  #encontrar un registro por id
  def show
    @usuario = Usuario.find(params[:id])           
  end
  
  # Método GET  para  editar un usuario basado en id
  def edit
    @usuario = Usuario.find(params[:id])
  end

  # Método POST  para  procesar datos de formularios 
  def create   
    @usuario = Usuario.new(usuario_params)   
    if @usuario.save   
      flash[:notice] = 'usuario agregado!'   
      redirect_to @usuario   
    else  
      render "new"   
    end   
  end   

  def update
    @usuario = Usuario.find(params[:id])
    if @usuario.update(usuario_params)
      flash[:notice] = 'usuario atualizado!'
      redirect_to @usuario
    else
      render "edit"
    end
  end

  def destroy  
    @usuario = Usuario.find(params[:id])   
    if @usuario.destroy 
      flash[:notice] = '¡usuario eliminado!'  
      redirect_to  @usuario
    else   
      render "destroy"   
    end   
  end

  private

  def usuario_params
    params.require(:usuario).permit(
      :identificacion,
      :nombre,
      :telefono,
      :direccion,
    )
  end
end   
