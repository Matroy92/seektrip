class ReviewsController < ApplicationController
  def new
    # we need @trip in our `simple_form_for`
    @trip = Trip.find(params[:trip_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `trip_id` to associate review with corresponding trip
    @trip = Trip.find(params[:trip_id])
    @review.trip = @trip
    if @review.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to trip_path(@review.trip)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
