Rails.application.routes.draw do
  resources :clubs
  resources :courses
  resources :holes
  resources :rounds
  resources :shots
  resources :tees

  resources :strokes_expected_putts
end
