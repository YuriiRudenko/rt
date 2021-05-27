module Rt
  module Endpoints
    class Photos < Grape::API
      namespace :photos do
        get do
          authenticate
          photos = Photo.all
          present photos, with: Entities::Photos::Base
        end
      end
    end
  end
end
