class StoockdeproductosController < ApplicationController

  def new
    @stoockdeproducto = Stoockdeproducto.new   
  end

  def index
    @stoockdeproducto = Stoockdeproducto.all
  end

  def show
    @stoockdeproducto = Stoockdeproducto.find(params[:id])           
  end

  def edit
    @stoockdeproducto = Stoockdeproducto.find(params[:id])
  end

  def create
    @stoockdeproducto = Stoockdeproducto.new(stoockdeproducto_params)
    if @stoockdeproducto.save 
      flash[:notice] = 'stoockdeproducto agregado!'
      redirect_to @stoockdeproducto
    else
      render :new
    end
  end

  def update
    @stoockdeproducto = Stoockdeproducto.find(params[:id])
    if @stoockdeproducto.update(stoockdeproducto_params)
      flash[:notice] = 'stoockdeproducto atualizado!'
      redirect_to @stoockdeproducto
    else
      render 'edit'
    end
  end


  def destroy
    @stoockdeproducto = Stoockdeproducto.find(params[:id])
    if @stoockdeproducto.destroy
      flash[:success] = 'stoockdeproducto was successfully deleted.'
      redirect_to stoockdeproducto_path
    else
      redirect_to "destroy"
    end
  end

  private

  def stoockdeproducto_params
    params.require(:stoockdeproducto).permit(
      :codigo,
      :nombre,
      :correoelectronico,
      :telefono,
      :direccion,
      :ciudad,
      :destinario,
    )
  end
end
