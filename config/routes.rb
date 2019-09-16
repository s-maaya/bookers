Rails.application.routes.draw do

 #URLに文字が打たれたらどのアクションに飛ぶか。

  get 'books/new' =>'todolists#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'book#top'

  post 'books' => 'todolists#create'

  get 'books' => 'todolists#index'

  get 'books/:id' => 'todolists#show', as: 'book'

  get 'books/:id/edit' => 'todolists#edit', as: 'edit_book'

  patch 'books/:id' => 'todolists#update', as: 'update_book'

  delete 'books/:id' => 'todolists#destroy', as: 'destroy_book'

end
