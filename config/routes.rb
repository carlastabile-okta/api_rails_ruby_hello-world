Rails.application.routes.draw do
  resource :messages, only: [] do
    get "protected"
    get "public"
    get "admin"
  end
end
