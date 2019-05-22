class ApplicationController < ActionController::API
  #after_action :cors_set_headers
  include ActionController::MimeResponds
  respond_to :json
  require 'net/http'

  def cors_set_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
  end

  def get_dollar_course
    render json: {value: Fund.get_dollar_course}
  end

  def get_urik
    render json: {values: Urik.get_info(params[:text])}
  end

  def get_bank_info
    bic = params[:bic]

    Rails.cache.fetch('urik', expires_in: 10.days, force: false) do
      uri = URI.parse('http://www.bik-info.ru/api.html?type=json&bik=' + bic)
      http = Net::HTTP.new(uri.host, uri.port)
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)
      res = JSON.parse(response.body)
      render json: res
      return
    end
    render json: {values: []}
  end
end
