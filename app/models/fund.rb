class Fund
  require 'net/http'
  require 'json'


  def self.get_dollar_course
    return Rails.cache.fetch('dollar_course', expires_in: 10.minutes, force: false) do
      uri = URI.parse('http://www.cbr.ru/scripts/XML_daily.asp?d=R01235')
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      request['Accept'] = 'application/xml'
      response = http.request(request)
      hash = Hash.from_xml(response.body)
      p hash["ValCurs"]["Valute"]
      value = 0
      hash["ValCurs"]["Valute"].each do |i|
        if i["ID"] == "R01235"
          value = i["Value"]
          break
        end
      end
      value
    end
  end
end
