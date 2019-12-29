Rails.application.routes.draw do
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  # resourcesは全てのアクションルートを出してくれる
  # execpt [:dest]はデストロイ以外をだすメソッド
  resources :students, except: [:destroy]
end
