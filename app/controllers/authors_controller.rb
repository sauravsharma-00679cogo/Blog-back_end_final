class AuthorsController < ApplicationController
    protect_from_forgery with: :null_session
    def authorList
        author = Author.all
        render json: author
    end
end