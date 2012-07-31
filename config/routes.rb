AlbumTest::Application.routes.draw do
  resources :photos

  resources :photo_albums

  resources :users

  root :to => 'photo_albums#index'
end
