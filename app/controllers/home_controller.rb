class HomeController < ApplicationController

  #before_action :authenticate_user!
  before_action :authenticate_user!, only: [:dasboard]

  def dasboard
  end

  def index
  end  
end
