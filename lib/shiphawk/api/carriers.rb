module Shiphawk
  # Carriers API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to manage categories.
  #
  class Carriers < Resource

    def self.credentials(params={})
      response, api_key = Shiphawk::ApiClient.request(:get, '/carriers/credentials', @api_key, params)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

    def self.logos(params={})
      response, api_key = Shiphawk::ApiClient.request(:get, '/carriers/logo', @api_key, params)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end
  end
end
