require 'compass'
require 'haml'
require 'sass'
require 'sinatra'

configure do
  Compass.configuration do |config|
    config.project_path = File.dirname(__FILE__)
    config.sass_dir = "views/stylesheets/"
  end

  set :haml, { :format => :html5 }
  set :sass, Compass.sass_engine_options
end

get '/css/screen.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :'stylesheets/screen'
end

get '/' do
  @title = 'Learn you some Ruby'
  haml :index
end
