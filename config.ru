require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'haml'
require 'wombat'
require './api/scrapist-api.rb'
require './api/scraper.rb'
require './scrapist.rb'

set :environment, :development
set :run, false
set :raise_errors, true

run Sinatra::Application

