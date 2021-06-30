module Rt::Helpers::User
  extend Grape::API::Helpers
  def authorized_user
    user_data,_ = JWT.decode headers['Token'], nil, false
    User.find(user_data['user_id'])
  rescue JWT::DecodeError
    error_response = {error: I18n.t('devise.failure.unauthenticated')}
    error!(error_response, 401)
  end
end
