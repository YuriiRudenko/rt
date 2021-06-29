module Rt
  module Entities
    class Photos < Grape::Entity
      expose :url do |photo|
        photo.image.url
      end
      expose :created_at, as: :upload_date
      expose :author do |photo|
        photo.album.user.username
      end
      expose :related_album do |photo|
        photo.album.name
      end
    end
  end
end

