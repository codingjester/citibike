module Citibike
  module Branches
    def branches(options={})
      get('v1/branch/list', options)
    end
  end
end
