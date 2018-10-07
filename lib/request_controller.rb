class RequestController
  def call(env)
    route = MangoRackApplication.router.route_for(env)
    if route
      response = route.execute(env)
      return response.rack_response
    else
      return [404, {}, []]
    end
  end
end