module API
  module V1
    class Base < Grape::API
      mount V1::Albums
      mount V1::Photos
      mount V1::Auth
    end
  end
end
