require 'citibike/connection'
require 'citibike/stations'
require 'citibike/request'

module Citibike
  class Client
    
    class << self
      def default_api_host
        ENV['CITIBIKE_API_HOST'] || 'appservices.citibikenyc.com'
      end
    end

    include Citibike::Stations
    include Citibike::Connection
    include Citibike::Request

    def api_host
      self.class.default_api_host
    end
  end
end
