Music::Application.routes.draw do
	resources :artists
	resources :bands
	resources :albums
	resources :songs
end
