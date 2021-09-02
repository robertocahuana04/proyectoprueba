class ProductosController < ApplicationController

  before_action :authenticate_user!

  # before_action :authenticate_user!, only: [:index]

  def index
  end

  def show
  end
end
