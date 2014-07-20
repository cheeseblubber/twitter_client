Rails.application.routes.draw do
  root "app#root"
  namespace :api, defaults: {format: 'json'}  do
    get 'users/:name' => 'users#show'
  end
end
