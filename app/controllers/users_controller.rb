class UserController < BaseController
	def index
	  Response.new.tap do |response|
	    response.body = "Hello World"
	    response.status_code = 200
	  end
	end
end