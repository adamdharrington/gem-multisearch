require 'minitest/autorun'
require 'minitest/pride'
require File.expand_path('../../lib/multisearch.rb', __FILE__)



ActiveRecord::Base.establish_connection(
	:adapter => "sqlite3", 
  :database => File.dirname(__FILE__) + "/multisearch.sqlite3"
)
load File.dirname(__FILE__) + '/support/schema.rb'
load File.dirname(__FILE__) + '/support/models.rb'
load File.dirname(__FILE__) + '/support/seeds.rb'
