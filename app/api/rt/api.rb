module Rt
  class API < Grape::API
    format :json
    version 'v1'
    prefix :api
    mount Rt::Albums
  end
end

