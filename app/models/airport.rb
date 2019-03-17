class Airport
  require 'net/http'
  require 'json'

  def self.get_by_code(code)
    unless code
      return {}
    end
    Rails.cache.fetch('airport_' + code, expires_in: 1.months, force: false) do
      uri = URI.parse('https://aviation-edge.com/v2/public/airportDatabase?key=85177b-cf6156&codeIataAirport=' + code)
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request['Accept'] = 'application/json'
      response = http.request(request)
      JSON.parse(response.body)
    end
  end
end
