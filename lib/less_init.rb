module LessInitializer
  def self.registered(app)
# Enables support for Less template reloading for rack.
# Store Less files by default within 'app/stylesheets/'
# See http://github.com/kelredd/rack-less for more details.
require 'rack/less'
# optional - use as necessary
Rack::Less.configure do |config|
  #config.compress = :yui
  # other configs ...
  config.combinations = {
          "api_samples" => ['bootstrap/bootstrap', 'wedge', 'bootstrap/responsive', 'application']
  }
  config.cache = true
end
app.use Rack::Less,
:root      => app.root,
:source    => 'stylesheets/',
:public    => '../tmp/public/',
:hosted_at => '/stylesheets'

  end
end
