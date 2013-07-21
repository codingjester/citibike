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
        builder.request :json

        builder.response :json, :content_type => /\bjson$/
        builder.use FaradayMiddleware::Mashify
        builder.adapter Faraday.default_adapter
      end
    end
  end
end
