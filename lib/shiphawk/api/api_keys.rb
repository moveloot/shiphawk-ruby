module Shiphawk

  # ApiKeys API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to managing api keys.
  #
  class ApiKeys < Resource

    # Regenerate SandBox API key for your account
    def self.regenerate_sandbox
      response, api_key = Shiphawk::ApiClient.request(:put, '/api_keys/sandbox', @api_key)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

    # Regenerate Production API key for your account
    def self.regenerate_production
      response, api_key = Shiphawk::ApiClient.request(:put, '/api_keys/production', @api_key)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

  end
end
