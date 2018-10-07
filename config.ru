require 'bundler'
Bundler.require

require File.join(File.dirname(__FILE__),'lib', 'mango_rack')
require File.join(File.dirname(__FILE__),'lib', 'request_controller')

MangoRackApplication = MangoRack.new

# Load the routes
require File.join(File.dirname(__FILE__),'config', 'routes')

run RequestController.new