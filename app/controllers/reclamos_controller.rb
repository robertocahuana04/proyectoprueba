class ReclamosController < ApplicationController
  
  def new
    @reclamo = Reclamo.new
  end

  def index
    @reclamos = Reclamo.all
  end

  def show
    @reclamo = Reclamo.find(params[:id])
  end

  def edit
    @reclamo = Reclamo.find(params[:id])
  end

  def create
    @reclamo = Reclamo.new(reclamo_params)
    if @reclamo.save
      flash[:notice] = 'reclamo agregado!'
      redirect_to @reclamo
    else
      render :new
    end
  end

  def update
    @reclamo = Reclamo.find(params[:id])
    if @reclamo.update(reclamo_params)
      flash[:notice] = 'compra atualizada!'
      redirect_to @reclamo
    else
      render "edit"
    end
  end

  def destroy  
    @reclamo = Reclamo.find(params[:id])   
    if @reclamo.destroy 
      flash[:notice] = '¡reclamo eliminado!'  
      redirect_to @reclamo 
    else   
      flash[:error] = '¡Error al eliminar este reclamo!'   
      render "destroy"   
    end   
  end

  private

  def reclamo_params
    params.require(:reclamo).permit(
      :codigo,
      :identificacion_del_cliente,
      :nombre_del_cliente,
      :producto_adquirido,
      :fecha_de_compra,
      :estado_del_producto,
    )
  end
end
