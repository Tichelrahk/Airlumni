class Api::V1::ServicesController < Api::V1::BaseController
  def index
    @services = Service.all
  end
end
