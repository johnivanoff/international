International::Application.routes.draw do
  
  get "locations/index"

  match 'locations/' => 'location#index', :as => :locations
  
end
