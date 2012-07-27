Rails.application.routes.draw do

  mount Forem::Engine => "/forem"

  match "/sign_in", :to => "fake#sign_in", :as => "sign_in"

end
