Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/max_array_sum", to: "max_array_sums#sub_array"
end
