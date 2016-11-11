class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |airport| [airport.code, airport.id] }
    @flights = Flight.all.where(from: params[:from], to: params[:to])
  end
end
