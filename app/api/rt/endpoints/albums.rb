module Rt
  module Endpoints
    class Albums < Grape::API
      namespace :albums do
        params do

        end
        get do
          albums = Album.all
          present albums, with: Entities::Albums::Base
        end
      end
    end
  end
end
