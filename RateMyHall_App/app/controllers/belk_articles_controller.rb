class BelkArticlesController < ApplicationController
    def new
    end
    
    def create
    @belk_article = BelkArticle.new(belk_article_params)
    
    @belk_article.save
    redirect_to @belk_article
    end
    
    def show
        @belk_article = BelkArticle.find(params[:id])
    end
    
    def index
        @belk_articles = BelkArticle.all
    end
    
    private 
    def belk_article_params
        params.require(:belk_article).permit(:text)
    end
end
