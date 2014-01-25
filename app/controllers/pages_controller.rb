class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
  end
  
  def about
  end
  
  def portfolio
  end  
  
  def inside
  end 
    
end
