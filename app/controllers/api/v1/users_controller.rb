class Api::V1::UsersController < Api::V1::BaseController
  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze
  skip_before_action :verify_authenticity_token

  def wechat_user

    wechat_params = {
      appId: ENV["appId"],
      secret: ENV["secret"],
      js_code: params[:code],
      grant_type: "authorization_code"
    }
#
    @wechat_response ||= RestClient.get(URL, params: wechat_params)
    @wechat_user ||= JSON.parse(@wechat_response.body)

  end

  def login
    @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
    render json: {
      userId: @user.id, text: 'finally solved'
    }
  end

  def show
    @user = User.find(params[:id])
    @service = @user.service
  end
end
