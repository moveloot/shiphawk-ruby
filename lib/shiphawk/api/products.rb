module Shiphawk
  # Products API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to manage products.
  #
  class Products < Resource

    def self.find_by(product_sku)
      response, api_key = Shiphawk::ApiClient.request(:get, "/products/#{product_sku}", @api_key, {}, {}, true)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

    def self.build(params={})
      response, api_key = Shiphawk::ApiClient.request(:post, '/products', @api_key, params, {}, true)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end
  end
end
