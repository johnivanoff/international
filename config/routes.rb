International::Application.routes.draw do
  
  scope '(:locale)' do
    resources :locations
  end
  
end
