module Rt
  class Auth < Grape::API
    namespace :auth do
      desc 'Log in'
      params do
        requires :email, type: String
        requires :password, type: String
      end
      post do
        user = User.find_by(email: params[:email])
        payload = {user_id: user.id}
        token = JWT.encode payload, nil , 'none'
        { token: token }
      end
    end
  end
end
