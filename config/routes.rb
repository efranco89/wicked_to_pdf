Rails.application.routes.draw do
  resources :student_notes do 
    collection do 
      post :sent_notes
    end
  end
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
