module SendoAPI
  class LocationCollection < ActiveResource::Collection
    def initialize(parsed = {})
      @elements = parsed['Data']
    end
  end
end