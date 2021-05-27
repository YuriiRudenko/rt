module Rt
  module Endpoints
    class Photos < Grape::API
      namespace :photos do
        params do

        end
        get do
          photos = Photo.all
          present photos, with: Entities::Photos::Base
        end
      end
    end
  end
end
