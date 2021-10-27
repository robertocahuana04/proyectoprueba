class UsuariosController < ApplicationController

    def index
        @usuario = Usuario.all
    end

    def new
        @usuario = Usuario.new   
    end

    def show
        @usuario = Usuario.find(params[:id])   
    end

    def edit
      @usuario = Usuario.find(params[:id])
    end

    def create   
        @usuario = Usuario.new(usuario_params)   
        if @usuario.save   
          flash[:notice] = 'usuario agregado!'   
          redirect_to @usuario  
        else   
          flash[:error] = 'No se pudo editar el usuario!'   
          render :new   
        end   
    end   
  
    def update
      @usuario = Usuario.find(params[:id])
      if @usuario.update(usuario_params)
        redirect_to @usuario
      else
        render 'edit'
      end
  end

  def destroy
    @usuario = Usuario.find(params[:id])
    if @usuario.destroy
        flash[:success] = 'usuario was successfully deleted.'
        redirect_to usuario_path
    else
        flash[:error] = 'Something went wrong'
        redirect_to usuario
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