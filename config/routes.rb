Rails.application.routes.draw do
  get 'kittens/index'
  get 'kittens/get'
  get 'kittens/new'
  get 'kittens/show'
  get 'kittens/post'
  get 'kittens/edit'
  get 'kittens/put'
  get 'kittens/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
