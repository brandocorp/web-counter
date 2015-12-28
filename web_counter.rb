require 'sinatra'
require 'redis'

get '/' do
  if $redis.get 'visitors'
    @visitor = $redis.incr 'visitors'
  else
    @visitor = 1
    $redis.set 'visitors', @visitor
  end
  erb :index
end
