module Citibike
  module Stations
    def stations(options={})
      get('data2/stations', options)
    end
  end
end
