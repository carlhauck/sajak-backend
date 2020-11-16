Rails.application.routes.draw do

  namespace :api do
    
    post "/games" => "games#create"

    get "/high_scores" => "high_scores#index"
    post "/high_scores" => "high_scores#create"
    
  end

end
