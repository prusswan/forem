Forem::Engine.routes.draw do
  resources :topics do
    resources :posts
  end

  root :to => "topics#index"
end
