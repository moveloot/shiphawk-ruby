module Shiphawk
    # Zip Codes API
    #
    # @see https://shiphawk.com/api-docs
    #
    # The following API actions provide the CRUD interface to managing zip codes.
    #
    #

  class ZipCodes < Resource

    # Search All ZipCodes
    # @param q, query zip.
    # @return [Object<ZipCods>]

    def self.search(params={})
      response, api_key = Shiphawk::ApiClient.request(:get, '/zip_codes/search', api_key, params)
      Shiphawk::Util.convert_to_Shiphawk_object(response, api_key) if response
    end

  end

end
