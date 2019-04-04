Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'static#index'


   namespace :v1, defaults:{ format: 'json'} do 
   	get 'things', to: 'things#index'
   end
    

    get '*page', to: 'static#index', constraints: ->(red) do

     !req.xhr? && req.format.html?


    end

end
