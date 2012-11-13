#encoding: utf-8

require 'haml'
require 'sinatra/base'
require 'sinatra/r18n'

class LearnYouSomeRuby < Sinatra::Base
  register Sinatra::R18n

  configure do
    set :haml, { :format => :html5 }
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
