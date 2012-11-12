#encoding: utf-8

require 'haml'
require 'sinatra/base'
require 'susy'

class LearnYouSomeRuby < Sinatra::Base
  configure do
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
