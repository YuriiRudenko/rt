module Rt
  module Entities::Photos
    class Base < Grape::Entity
      expose :image
      expose :album_id
      expose :created_at
      expose :author_photo

      private

      def author_photo
        object.album.user_id
      end
    end
  end
end
