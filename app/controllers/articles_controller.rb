class ArticlesController < ApplicationController
    def list
        articles = Article.all
        render json: articles
    end
end
