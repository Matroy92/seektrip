class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
  #if @trip.photo.attached? do
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save

    redirect_to trip_path(@trip)
  end

  def edit
  end

  def update
    @trip.update(trip_params)

    redirect_to trip_path(@trip)
  end

  def destroy
    @trip.destroy

    redirect_to trips_path
  end

  private

  def trip_params

    params.require(:trip).permit(:name, :address, :starting_date, :ending_date, :photo)
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end