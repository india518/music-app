Music::Application.routes.draw do
	resources :artists
	resources :bands
	resources :albums
	resources :tracks
end
