module Shiphawk

  # Shipments API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to public endpoints.
  #

  class Public < Resource

    # retrieve tracking information for a specific shipment
    # @params [ code ], string, required (refers to carrier short code, contact alex.hawkins@shiphawk.com for a complete list of codes)
    #         [ tracking_number ], string, required

    def self.track(params={})
      response, api_key = Shiphawk::ApiClient.request(:get, '/public/track', @api_key, params)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

  end

end
