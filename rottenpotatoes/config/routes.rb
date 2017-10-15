Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  get '/:movie/find-similar', to: 'directors#index', as: 'director'
end
