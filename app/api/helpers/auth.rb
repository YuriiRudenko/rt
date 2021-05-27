module Api
  module Helpers
    class Auth
      def decode
        decode, = JWT.decode params[:token], nil, false
        decode
      end
    end
  end
end
