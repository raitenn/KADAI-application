Rails.application.routes.draw do
	root 'root#top'
  resources :posts
end
