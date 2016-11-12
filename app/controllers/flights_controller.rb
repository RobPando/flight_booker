class FlightsController < ApplicationController

  def index
    @airports = Airport.all.map { |airport| [airport.code, airport.id] }
    @available_dates = Flight.all.map { |f| [f.date.to_date, f.id]}
    @flights = Flight.all.where(from: params[:from], to: params[:to])
  end
end
