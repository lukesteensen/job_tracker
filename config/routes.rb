JobTracker::Application.routes.draw do

  root to: 'jobs#index'

  resources :jobs, :cities, :companies, :technologies

end
