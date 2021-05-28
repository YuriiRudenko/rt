module Rt
  module Helpers
    module Auth
      attr_reader :current_user

      def authenticate
        headers_token = headers['Authorization']

        token, = JWT.decode  headers_token, ENV.fetch('AUTH_SECRET'), true, { algorithm: 'HS256' }

        @current_user = User.find(token['user_id'])
      rescue JWT::DecodeError
        error_response = { error: I18n.t('devise.failure.unauthenticated') }
        error!(error_response, 401)
      end
    end
  end
end
