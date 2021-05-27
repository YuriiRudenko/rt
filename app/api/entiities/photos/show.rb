module Api
  module Entities
    module Photos
      class Show < Grape::Entity
        expose :image
        expose :created_at
        expose :author do |photo|
          photo.album.user.username
        end
        expose :album do |photo|
          photo.album.name
        end
      end
    end
  end
end
