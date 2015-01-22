# Ember-server.rb

Simple Ruby server powered by Sinatra working out-of-the-box with Ember-deploy

## Instalation

Just deploy this repository to your favorite provider, set two environment variables and follow instructions on ember-deploy

### ENV variables

* `APP` - Application name, used as namespace, needs to be the same as in ember-deploy
* `REDIS_URL` - URL where is Redis running, together with your credentials

## Free hosting (with https)

It's very minimal application, it's just serving html content from Redis, so it's possible to host it for free on Heroku with RedisToGo plugin (free). To keep using https certificate provided by Heroku on your domain or subdomain, just use Cloudflare and point '@' as a CNAME to your Heroku app.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request