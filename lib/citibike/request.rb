module Citibike
  module Request
    def get(path, params = {})
      respond connection.get(path, params)   
    end
    
    def respond(response)
      if [201, 200].include?(response.status)
        response.body['results']
      else
        # surface the meta alongside response
        response.body
      end
    end
  end
end
