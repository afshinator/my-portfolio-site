module ArticlesHelper
  
    def article_params
      params.require(:article).permit(:title, :blurb, :image_url, :body, :tag_list)
    end
  
end
