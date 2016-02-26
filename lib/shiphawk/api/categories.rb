module Shiphawk
  # Categories API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to manage categories.
  #
  class Categories < Resource

    def self.find_all
      response, api_key = Shiphawk::ApiClient.request(:get, '/categories', @api_key, {}, {}, true)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

    def self.build(params={})
      response, api_key = Shiphawk::ApiClient.request(:post, '/categories', @api_key, params, {}, true)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

  end
end
