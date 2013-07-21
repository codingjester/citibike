module Citibike
  module Helmets
    def helmets(options={})
      get('v1/helmet/list', options)
    end
  end
end
