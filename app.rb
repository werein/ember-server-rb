require "rubygems"
require "sinatra/base"
require "redis"

class App < Sinatra::Base

  get '*' do
    content_type 'text/html'
    index
  end

  private
    def redis
      $redis ||= Redis.new url: ENV['REDIS_URL']
    end

    def key
      params[:key] || redis.get("#{ENV['APP']}:current")
    end

    def index
      redis.get key
    end
end
