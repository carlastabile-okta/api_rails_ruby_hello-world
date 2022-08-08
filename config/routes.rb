Rails.application.routes.draw do
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
  scope :api do 
    resource :messages, only: [] do
      get "protected"
      get "public"
      get "admin"
    end
  end
end
