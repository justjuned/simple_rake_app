require File.join(File.dirname(__FILE__), 'router.rb')

class MangoRack
  attr_reader :router

  def initialize
    @router = Router.new
  end
end