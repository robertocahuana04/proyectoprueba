class RegistrodetrabajadoresController < ApplicationController

    def index
        @registrodetrabajadore = Registrodetrabajadore.all   
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
            redirect_to registrodetrabajadore_path(@registrodetrabajadore)
        else
            render :new
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

    def update
        @registrodetrabajadore = Registrodetrabajadore.find(params[:id])
       
        if @registrodetrabajadore.update(registrodetrabajadore_params)
          redirect_to @registrodetrabajadore
        else
          render 'edit'
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
