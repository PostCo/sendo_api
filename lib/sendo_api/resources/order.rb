module SendoAPI
  class Order < Base
    self.element_name = ""
    self.collection_parser = ::SendoAPI::OrderCollection

    def self.find_by_order_number_and_status(order_number: order_number, status: status)
      find(:all, from: "/dop/v1/shipment/search/#{order_number}/#{status}")&.first
    end

    def self.update_status(body: body, tracking_number: tracking_number)
      connection.post("/dop/v1/shipment/update/#{tracking_number}", JSON.generate(body), headers)
    end
  end
end