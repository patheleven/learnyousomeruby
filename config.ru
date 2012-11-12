require 'sprockets'
require 'sprockets-sass'
require 'compass'
require 'sass'
require './web'

Compass.configuration do |config|
  config.project_path = File.dirname(__FILE__)
  config.sass_dir = 'assets/stylesheets/'
end

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  run environment
end

map '/' do
  run LearnYouSomeRuby
end
