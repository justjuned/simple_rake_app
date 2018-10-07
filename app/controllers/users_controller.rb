class UserController < BaseController
	def index
		users = User.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:name]}%","%#{params[:name]}%")

	  Response.new.tap do |response|
	    response.body = users.to_json
	    response.status_code = 200
	    response.headers['Content-Type'] = 'application/json'
	  end
	end
end