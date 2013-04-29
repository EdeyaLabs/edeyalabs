Edeyalabs::Application.routes.draw do
  root :to => 'home#index'

  post :send_email, :controller => :home, :action => :send_email
end
