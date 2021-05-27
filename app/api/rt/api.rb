module Rt
  class API < Grape::API
    format :json
    prefix :api

    mount Endpoints::Albums
    mount Endpoints::Photos
  end
end
