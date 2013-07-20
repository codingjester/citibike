require 'citibike/client'

module Citibike
  
  autoload :VERSION, File.join(File.dirname(__FILE__), 'citibike/version')

  class << self
    def new(options={})
      Citibike::Client.new
    end
  end
end
