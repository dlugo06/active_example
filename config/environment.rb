require 'yaml'

db_options = YAML.load(File.read('./config/databse.yml'))
ActiveRecord::Base.establish_connection(db_options)
