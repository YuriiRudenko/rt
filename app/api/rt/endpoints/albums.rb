module Rt
  module Endpoints
    class Albums < Grape::API
      namespace :albums do
        get do
          authenticate
          albums = Album.all
          present albums, with: Entities::Albums::Base
        end
      end
    end
  end
end
