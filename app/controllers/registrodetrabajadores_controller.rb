class RegistrodetrabajadoresController < ApplicationController

    def index
      @registrodetrabajadores = Registrodetrabajadore.all   
    end

    def show
      @registrodetrabajadore = Registrodetrabajadore.find(params[:id])
    end

    def edit
      @registrodetrabajadore = Registrodetrabajadore.find(params[:id])
    end

    def new
      @registrodetrabajadore = Registrodetrabajadore.new
    end

    def create
      @registrodetrabajadore = Registrodetrabajadore.new( registrodetrabajadore_params)
      if @registrodetrabajadore.save
        flash[:notice] = 'Trabajador agregado!' 
        redirect_to @registrodetrabajadore
      else
        render :new
      end
    end
    

    def update
      @registrodetrabajadore = Registrodetrabajadore.find(params[:id])
      if @registrodetrabajadore.update(registrodetrabajadore_params)
        flash[:notice] = 'trabajador atualizado!'
        redirect_to @registrodetrabajadore
      else
        render 'edit'
      end
    end

    
    def destroy  
        @registrodetrabajadore = Registrodetrabajadore.find(params[:id])   
        if @registrodetrabajadore.destroy 
          flash[:notice] = '¡registrodetrabajadore eliminado!'  
          redirect_to  @registrodetrabajadore
        else   
          flash[:error] = '¡Error al eliminar este registrodetrabajadore!'   
          render "destroy"   
        end   
      end

    private

    def registrodetrabajadore_params
        params.require(:registrodetrabajadore).permit(
          :nombre,
          :edad,
          :cargo,
          :telefono,
        )
    end

end
