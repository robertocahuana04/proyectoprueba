class HomeController < ApplicationController

  #before_action :authenticate_user!
  before_action :authenticate_user!, only: [:dasboard]

  def dasboard
  end

  def landing

  end  

  def index
    @producto  =  Producto.all
  end

  def show
    @producto = Producto.find(params[:id])
  end
end
