class TiposController < ApplicationController

  def new
    @tipo = Tipo.new   
  end

  def index
    @tipos = Tipo.all
  end

  def show
    @tipo = Tipo.find(params[:id])           
  end

  def edit
    @tipo = Tipo.find(params[:id])
  end

  def create
    @tipo = Tipo.new(tipo_params)
    if @tipo.save 
      flash[:notice] = 'tipo agregado!'
      redirect_to @tipo
    else
      render "new"
    end
  end


  def update
    @tipo = Tipo.find(params[:id])
    if @tipo.update(tipo_params)
      flash[:notice] = 'tipo atualizado!'
      redirect_to @tipo
    else
      render 'edit'
    end
  end

  def destroy
    @tipo = Tipo.find(params[:id])
    if @tipo.destroy
      flash[:success] = 'tipo eliminado.'
      redirect_to @tipo
    else
      flash[:error] = 'Something went wrong'
      redirect_to "destroy"
    end
  end

  private

  def tipo_params
    params.require(:tipo).permit(
      :tipo,
      :estado,
    )
  end
end
