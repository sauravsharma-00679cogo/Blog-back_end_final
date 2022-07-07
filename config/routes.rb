Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html  
  # Defines the root path route ("/")
  # root "articles#index"
  get "/authors", to: "authors#authorList"
  get "/articles", to: "articles#list"
  get "/articles/:id", to: "articles#findArticle"
  post "/articles", to: "articles#createArticle"
  put "/articles/:id", to: "articles#updateArticle"
  delete "/articles/:id", to: "articles#deleteArticle"
end

