
Rails.application.routes.draw do
#ActionController::Routing::Routes.draw do |map|
  root 'query#index#form', :action => "index", :controller => "query"
  #map.root :controller => "query", :controller => "query", :action => "index", :format => 'html'
  get '/query' => 'query#index#form', :format => 'html'
  post '/query' => 'query#index#form', :format => 'html', :action => "index", :controller => "query"
  post '/' => 'query#index#form', :format => 'html', :action => "index", :controller => "query"
  get '/about' => 'query#about', :format => 'html'
  get '/help' => 'query#help', :format => 'html'
  #root 'query#index#form',:format => 'bgps', :action => "index", :controller => "query"
  #map.root :controller => "query", :controller => "query", :action => "index", :format => 'html'
  get '/query' => 'query#index#form', :format => 'bgps'
  post '/query' => 'query#index#form', :format => 'bgps', :action => "index", :controller => "query"
  get '/about' => 'query#about', :format => 'bgps'
  get '/help' => 'query#help', :format => 'bgps'
  #get '/help' => 'query#help', :format => 'html'
  get '/select_more_than_one' => 'query#help', :format => 'html'#, :anchor => 'faq'
  match '/results', to: 'query#help', :format => 'html', via: :get
  #map.query '/query.:format', :controller => "query", :action => "index"
  ##map.table '/table.:format', :controller => "table", :action => "write" , :format => 'html'
  #map.help '/help', :controller => "query", :action => "help", :format => 'html'
  #map.about '/about', :controller => "query", :action => "about", :format => 'html'
  #map.advanced_query_help "/help", :anchor => 'querying', :controller => "query", :action => "help", :format => 'html'
  #map.select_more_than_one "/help", :anchor => 'faq', :controller => "query", :action => "help", :format => 'html'
  #map.results "/help", :anchor => 'results', :controller => "query", :action => "help", :format => 'html'
end
