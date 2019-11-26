class Api::V1::ServicesController < Api::V1::BaseController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  #not done yet
  def create
    @service = Service.new(service_params)
  end

  private

  def service_params
    params.require(:service).permit(:name,
                                    :description,
                                    :location,
                                    :price,
                                    :availability_weeknight,
                                    :availability_weekday,
                                    :availability_weekend_day,
                                    :availability_weekend_night)
  end
end
