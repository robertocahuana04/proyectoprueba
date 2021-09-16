class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:dasboard]

  def dasboard

  end

  def landing

  end  
end
