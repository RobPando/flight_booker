class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end
  def new
    unless params[:flight].nil?
      @flight = Flight.find(params[:flight])
      @passenger_num = params[:num].to_i
    else
      render 'flights/index'
    end
  end

  def create
    flight = Flight.find(params[:flight])
    params[:passengers].each do |passenger|
      passenger = Passenger.create(name: passenger[:name], email: passenger[:email])
      @booking = Booking.create(flight: flight, passenger: passenger)
      
      render 'new' unless passenger.valid?
    end
    flash[:success] = "Flight was successfully booked!"
    redirect_to root_url
  end

  private

end
