class Flight
  require 'net/http'
  require 'json'

  def self.get_all
    return Rails.cache.fetch('flights', expires_in: 10.minutes, force: false) do
      uri = URI.parse('https://aviation-edge.com/v2/public/timetable?key=#85177b-cf6156&iataCode=DME&type=departure')
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