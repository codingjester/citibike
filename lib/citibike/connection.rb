require 'faraday'
require 'faraday_middleware'

module Citibike
  module Connection
    def connection(options={})
      host = api_host
      default_options = {
        :headers => {
          :accept => 'application/json',
          :user_agent => "citibike-gem (ruby) - #{Citibike::VERSION}"
        },
        :url => "http://#{host}/"
      }
      Faraday.new("http://#{host}/", default_options.merge(options)) do |builder|
        builder.use Faraday::Request::UrlEncoded
        builder.use FaradayMiddleware::ParseJson, :content_type => 'application/json'
        builder.use Faraday::Adapter::NetHttp
      end
    end
  end
end
