class FlightController < ApplicationController

  def show
    id = (params[:id] || '').upcase.gsub(' ', '')
    @flights = Flight.get_all
    @flight_result = @flights.select {|flight| flight['flight']['iataNumber'] === id}
    unless @flight_result
      @flight_result = @flights.select {|flight| flight['codeshared']['flight']['iataNumber'] === id}
    end

    @flight = (@flight_result || []).first

    @departure_airport = Airport.get_by_code(@flight.dig('departure').dig('iataCode')).first
    @arrival_airport = Airport.get_by_code(@flight.dig('arrival').dig('iataCode')).first

    @departure_airport = {}
    @arrival_airport = {}

    @departure_airport['nameAirport'] = 'DME'
    @departure_airport['nameCountry'] = 'Russia'
    @departure_airport['GMT'] = '0'

    @arrival_airport['nameAirport'] = 'DME'
    @arrival_airport['nameCountry'] = 'Russia'
    @arrival_airport['GMT'] = '0'

    @flight['departure']['airportInfo'] = {nameAirport: @departure_airport['nameAirport'], nameCountry: @departure_airport['nameCountry'], GMT: @departure_airport['GMT']}
    @flight['arrival']['airportInfo'] = {nameAirport: @arrival_airport['nameAirport'], nameCountry: @arrival_airport['nameCountry'], GMT: @arrival_airport['GMT']}
    p @flight
    render json: @flight
  end

  def filter
    name = (params[:name] || '').upcase.gsub(' ', '')
    @flights = Flight.get_all
    @flight_result = @flights.select {|flight| flight['flight']['iataNumber'].start_with?(name) }
    unless @flight_result
      @flight_result = @flights.select {|flight| flight['codeshared']['flight']['iataNumber'].start_with?(name)}
    end
    render json: (@flight_result || [])
  end
end
