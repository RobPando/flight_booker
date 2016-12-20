# Bookings
class BookingsController < ApplicationController
  def index
    find_bookings
  end

  def new
    if params[:flight]
      find_flight
      @passenger_num = params[:num].to_i
    else
      redirect_to root_url
    end
  end

  def create
    find_flight
    iterate_passanger
    flash[:success] = 'Flight was successfully booked!'
    redirect_to root_url
  end

  private

  def find_bookings
    @bookings ||= scope_booking
  end

  def find_flight
    @flight ||= Flight.find(params[:flight])
  end

  def scope_booking
    Booking.all
  end

  def iterate_passanger
    params[:passengers].each do |passenger|
      create_passanger(passenger)
      build_booking
      render :new unless @booking.save
    end
  end

  def create_passanger(passenger)
    @passenger = Passenger.create(name: passenger[:name],
                                  email: passenger[:email])
  end

  def build_booking
    @booking = Booking.new(flight: @flight, passenger: @passenger)
  end
end
