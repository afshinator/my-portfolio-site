require 'rss'

class ArticlesController < ApplicationController
    include ArticlesHelper
  
    def index
        @articles = Article.order(created_at: :desc)
        @all_articles = Article.order(updated_at: :desc)        # for sidebar list
    end  
    
    
    def show
        @articles = Article.friendly.find(params[:id])
        @comment = Comment.new
        @comment.article_id = @articles.id
        
        @all_articles = Article.order(created_at: :desc)
    end
  
    
    def new
        @article = Article.new
        
        @all_articles = Article.order(created_at: :desc)
    end
  
    
    def create
        @all_articles = Article.order(created_at: :desc)
        
        @article = Article.new(article_params)
        @article.save
        flash.notice = "Article '#{@article.title}' Created."        
        redirect_to article_path(@article)
    end
  
    
    def destroy
        @all_articles = Article.order(created_at: :desc)
        
        @article = Article.friendly.find(params[:id])
        @article.destroy
        flash.notice = "Article '#{@article.title}' Deleted!"        
        redirect_to articles_path
    end
    
    
    def edit
        @article = Article.friendly.find(params[:id])
        
        @all_articles = Article.order(created_at: :desc)
    end

    
    def update
        @all_articles = Article.order(updated_at: :desc)
        
        @article = Article.friendly.find(params[:id])
        @article.update(article_params)
                
        flash.notice = "Article '#{@article.title}' Updated!"
        
        redirect_to article_path(@article)
    end
  
    
end
