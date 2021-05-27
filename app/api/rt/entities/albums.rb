module Rt
  module Entities::Albums
    class Base < Grape::Entity
      expose :name
      expose :user_id
      expose :updated_at
      expose :count_photos

      private
      def count_photos
        object.photos.count
      end
    end
  end
end
