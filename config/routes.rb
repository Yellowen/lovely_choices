
Rails.application.routes.draw do

  mount Faalis::Engine => '/'

  api_routes do
    # Your API routes goes here.
  end

  in_dashboard do
    resources :categories
    resources :wishes
    # Your dashboard routes goes here.
  end

  post 'subscribe', to: 'welcome#subscribe'

  root 'welcome#index'

end
