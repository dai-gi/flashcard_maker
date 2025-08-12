Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :card_decks
    end
  end
end
