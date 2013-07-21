require 'citibike/connection'
require 'citibike/stations'
require 'citibike/helmets'
require 'citibike/branches'
require 'citibike/request'

module Citibike
  class Client
    
    class << self
      def default_api_host
        ENV['CITIBIKE_API_HOST'] || 'appservices.citibikenyc.com'
      end
    end

    include Citibike::Stations
    include Citibike::Helmets
    include Citibike::Branches
    include Citibike::Connection
    include Citibike::Request

    def api_host
      self.class.default_api_host
    end
  end
end
