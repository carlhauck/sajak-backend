Rails.application.routes.draw do

  namespace :api do

    get "/high_scores" => "high_scores#index"
    post "/high_scores" => "high_scores#create"
    delete "/high_scores/:id" => "high_scores#destroy"

  end

end
