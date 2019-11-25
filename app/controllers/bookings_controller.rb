class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @event = Event.find(params[:event_id])
    @bookings = Booking.where(event_id: params[:event_id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @event = Event.find(params[:event_id])
    @booking.user = current_user
    @booking.event = @event
    #redirect...
  end

  def destroy
    @booking.destroy
    #redirect...
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:number_of_guests)
  end
end
