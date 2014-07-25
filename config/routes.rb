Rails.application.routes.draw do
  root "app#root"
  namespace :api, defaults: {format: 'json'}  do
    get 'users/:name' => 'users#show'
    get 'mutual_follows' => 'follows#mutual_follows'
  end
end
