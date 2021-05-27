module Api
  module Entities
    module Albums
      class Show < Grape::Entity
        expose :name
        expose :photos_amount do |album|
          album.photos.count
        end
        expose :author do |album|
          album.user.username
        end
        expose :update_at
      end
    end
  end
end
