require File.join(File.dirname(__FILE__), '..', 'scrapist.rb')

require 'sinatra'
require 'rack/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, fasle

def app
  Sinatra::Application
end
