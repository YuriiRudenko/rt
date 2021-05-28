module Rt
  class API < Grape::API
    format :json
    prefix :api

    helpers Rt::Helpers::Shared

    mount Endpoints::Albums
    mount Endpoints::Photos
    mount Endpoints::Auth
  end
end
