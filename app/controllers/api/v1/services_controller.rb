class Api::V1::ServicesController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token, only: [:create, :destroy]
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)
    @service.user = User.find(@service.user_id)
    if @service.save
      render :show
    else
      render_error
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    head :no_content
  end

  private

  def service_params
    params.require(:service).permit(:name,
                                    :description,
                                    :price,
                                    :user_id)
  end

  def render_error
    render json: { errors: @service.errors.full_messages },
           status: :unprocessable_entity
  end
end
