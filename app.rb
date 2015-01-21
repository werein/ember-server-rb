require "rubygems"
require "sinatra/base"
require "redis"

class App < Sinatra::Base

  def index(key)  
    redis = Redis.new url: ENV['REDIS_URL']
    key ||= redis.get "#{ENV['APP']}:current"
    redis.get key
  end

  get '/' do  
    content_type 'text/html'
    index params[:key]
  end  
end
