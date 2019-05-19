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
end
