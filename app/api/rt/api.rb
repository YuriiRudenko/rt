module Rt
  class API < Grape::API
    format :json
    # version 'v1'
    prefix :api
    mount Rt::Albums
    mount Rt::Photos
    mount Rt::Auth
  end
end

