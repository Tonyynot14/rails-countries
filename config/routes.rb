Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get "/countries" => "countries#index"
    get"/countries/new" => "countries#new"
    post "countries" => "countries#create"
    get "/countries/edit" => "countries#edit"
    post "/countries/edit" => "countries#editInfo"
    get '/guess' => "countries#guess"
    get "/answer" => "countries#answer"
    
end
