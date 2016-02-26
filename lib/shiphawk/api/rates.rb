module Shiphawk

  # Rates API
  #
  # @see https://shiphawk.com/api-docs
  #
  # The following API actions provide the CRUD interface to managing rates.
  #
  class Rates < Resource

    # create a new set of rates
    # @params [ items ], Object, required
    #         [ to_zip ], string, required
    #         [ from_zip ], string, require

    def self.build(params={})

      begin
        api_key = Shiphawk.configure.api_key
        api_base = Shiphawk.configure.base_url
        params = {}.merge(params)
        response = RestClient.post("#{api_base}/rates?api_key=#{api_key}", params.to_json, :content_type => :json)
        puts "Response status: #{response.code}"
        JSON.parse(response) if response
      rescue => e
        JSON.parse(e.response) if e
      end
    end

    # create a new set of standard rates

    def self.create_standard_rates(params={})
      response, api_key = Shiphawk::ApiClient.request(:post, '/rates/standard', @api_key, params)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

    #get rates for vehicle transportation

    def self.get_vehicle_rates(params={})
      response, api_key = Shiphawk::ApiClient.request(:get, '/rates/vehicle', @api_key, params)
      Shiphawk::Util::convert_to_Shiphawk_object(response, api_key) if response
    end

  end

end
