Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "pages#index"

  get "tailwind/blog_post"
  get "tailwind/sign_in"
end
