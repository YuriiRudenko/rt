module Rt
  class API < Grape::API
    format :json
    prefix :api

    helpers Rt::Helpers::Auth

    mount Endpoints::Albums
    mount Endpoints::Photos
    mount Endpoints::Auth
  end
end
