module Shiphawk

  # Items API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to managing items.
  #

  class Items < Resource

    def self.search(params={})
      response, api_key = Shiphawk::ApiClient.request(:get, '/items/search', @api_key, params)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

    def self.item_object(items)
     JSON.parse(items.to_json)
    end

  end
end
