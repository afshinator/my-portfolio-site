class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
      @all_articles = Article.order(created_at: :desc)     #how can i have this applied to all pages.. instead of using it explicitly on every page??    
  end
  
  def about
      @all_articles = Article.order(created_at: :desc)     
  end
  
  def portfolio
      @all_articles = Article.order(created_at: :desc)     
  end  
  
  def inside
  end 
    
end
