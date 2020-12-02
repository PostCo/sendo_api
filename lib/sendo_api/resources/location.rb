module SendoAPI
  class Location < Base
    self.prefix = "/dop/v1/search/all/location/postco"
    self.element_name = ""
    self.collection_parser = ::SendoAPI::LocationCollection
  end
end