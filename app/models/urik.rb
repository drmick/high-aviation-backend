class Urik
  require 'net/http'
  require 'json'

  def self.get_info(string)
    return Rails.cache.fetch('urik', expires_in: 10.minutes, force: false) do
      uri = URI.parse('https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/party?query=' + string)
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request['Accept'] = 'application/json'
      request['Content-Type'] = 'application/json'
      request['Authorization'] = 'Token 03ea9facc387df79daddc3c6280c566d33cfc3da'


      response = http.request(request)
      JSON.parse(response.body)
    end
  end

end



# curl -X POST \
#     -H "Content-Type: application/json" \
#     -H "Accept: application/json" \
#     -H "Authorization: Token 03ea9facc387df79daddc3c6280c566d33cfc3da" \
#     -d '{ "query": "сбербанк" }' \
#     https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/party
