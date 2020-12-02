module SendoAPI
  class OrderCollection < ActiveResource::Collection
    def initialize(parsed = {})
      if parsed['Data']['Shipments'].nil?
        @elements = [] 
      else
        @elements = parsed['Data']['Shipments'].map! do |attr| attr.deep_transform_keys! { |key| key.camelize(:lower) } end
      end
    end
  end
end