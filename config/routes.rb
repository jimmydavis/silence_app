SilenceApp::Application.routes.draw do

  root to: 'lambs#index'
  resources :lambs

end
