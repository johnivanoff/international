International::Application.routes.draw do

  match 'locations/' => 'locations#index', :as => :locations
  
end
