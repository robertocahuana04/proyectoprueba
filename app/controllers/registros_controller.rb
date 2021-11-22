class RegistrosController < ApplicationController
  
    def new
      @registro = Registro.new
    end
  
    def index
      @registros = Registro.all
    end
  
    def show
      @registro = Registro.find(params[:id])
    end

    def edit
      @registro = Registro.find(params[:id])
    end
  
    def create
      @registro = Registro.new(registro_params)
      if @registro.save
        flash[:notice] = 'registro agregado!'
        redirect_to @registro
      else
        render :new
      end
    end
  
    def update
      @registro = Registro.find(params[:id])
      if @registro.update(registro_params)
        flash[:notice] = 'compra atualizada!'
        redirect_to @registro
      else
        render "edit"
      end
    end
  
    def destroy  
      @registro = Registro.find(params[:id])   
      if @registro.destroy 
        flash[:notice] = '¡registro eliminado!'  
        redirect_to  @registro
      else   
        flash[:error] = '¡Error al eliminar este registro!'   
        render "destroy"   
      end   
    end
  
    private
  
    def registro_params
      params.require(:registro).permit(
        :identificacion,
        :nombre,
        :correo_electronico,
        :fecha_de_nacimiento,
        :direccion,
        :ciudad,
        :cargo,
      )
    end
  end
  