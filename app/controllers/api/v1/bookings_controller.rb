class Api::V1::BookingsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create]
  def create
    @service = Service.find(params[:service_id])
    @booker = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = @booker
    if @booking.save
    else
      render_error
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end

  def render_error
    render json: { errors: @booking.errors.full_messages },
           status: :unprocessable_entity
  end
end
