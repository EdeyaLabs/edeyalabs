Edeyalabs::Application.routes.draw do
  root :to => 'home#index'

  get :about_us, :controller => :home, :action => :about_us
  get :services, :controller => :home, :action => :services
  get :contact_us, :controller => :home, :action => :contact_us
end
