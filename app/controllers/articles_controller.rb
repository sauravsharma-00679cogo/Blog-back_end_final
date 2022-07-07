class ArticlesController < ApplicationController
    protect_from_forgery with: :null_session
    def list
        articles = Article.all
        render json: articles
    end
    def findArticle
        article = Article.find(params[:id])
        render json: article
    end

    def createArticle
        add_article = {
        "title" => params["title"],
        "description" => params["description"],
        "url" => params["url"],
        "views" => params["views"],
        "author_id" => params["author_id"]
        }
        article = Article.new(add_article);
        article.save
        render json: article
    end
    def updateArticle
        article= Article.find(params[:id])
        article_update = {
            "title" => params["title"],
            "description" => params["description"],
            "url" => params["url"],
            "views" => params["views"]
            }
        article.update(article_update) 
        render json: article 
    end
    def deleteArticle
        article= Article.find(params[:id])
        article.destroy
    end
end
