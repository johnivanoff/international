International::Application.routes.draw do
  
  scope '(:locale)' do
    match 'locations/' => 'locations#index', :as => :locations
  end
  
end
