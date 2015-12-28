require 'redis'
$redis = Redis.new
require './web_counter.rb'
run Sinatra::Application
