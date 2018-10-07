require 'bundler'
Bundler.require

require 'active_record'
require 'yaml'
require 'json'

require File.join(File.dirname(__FILE__),'lib', 'mango_rack')
require File.join(File.dirname(__FILE__),'lib', 'request_controller')

MangoRackApplication = MangoRack.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

# Configure ActiveRecord

env    = ENV['ENV'] || 'development'
root   = File.expand_path '..', __FILE__
config = YAML.load(File.read(File.join(root, 'db/config.yml')))

 ActiveRecord::Base.configurations = config
 ActiveRecord::Base.establish_connection env.to_sym

Dir.glob('./app/models/*.rb').each do |file|
  require file
end

use Rack::Auth::Basic, 'Restricted Area' do |username, password|
  [username, password] == ['admin', 'abc123']
end

use Rack::ETag

run RequestController.new