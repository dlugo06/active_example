require 'yaml'
require 'bundler'
Bundler.require

environment = ENV.fetch('RACK_ENV') { 'development' }
db_options = YAML.load(File.read('./config/databse.yml')[environment])
ActiveRecord::Base.establish_connection(db_options)

require 'ideabox'
