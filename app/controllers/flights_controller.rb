# Root
class FlightsController < ApplicationController
  def index
    mapped_airports
    mapped_flight_dates
    flight_searcher
  end

  private

  def mapped_airports
    @airports ||= Airport.all.map { |a| [a.code, a.id] }
  end

  def mapped_flight_dates
    @dates = scope_flights.map { |f| [f.date.to_date, f.id] }
  end

  def flight_searcher
    @flights ||= scope_flights.where(from: params[:from], to: params[:to])
  end

  def scope_flights
    Flight.all
  end
end
