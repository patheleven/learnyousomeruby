#encoding: utf-8

require 'compass'
require 'haml'
require 'sass'
require 'sinatra/base'
require 'susy'

class LearnYouSomeRuby < Sinatra::Base
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
    @id    = 'index'
    @title = 'Learn you some Ruby'
    haml :index
  end

  get '/basico' do
    @id    = 'basic'
    @title = 'Learn you some basic Ruby'
    haml :basic
  end
end
