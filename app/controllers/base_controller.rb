require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'response')

class BaseController
	attr_reader :env, :params

	def initialize env
	  @env = env
	  @params = Rack::Request.new(env).params.with_indifferent_access
	end
end