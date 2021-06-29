module Rt
  module Entities
    class Albums < Grape::Entity
      expose :name
      expose :amount_of_photos do |album|
        album.photos.count
      end
      expose :author do |album|
        album.user.username
      end
      expose :updated_at, as: :last_change_date
    end
  end
end
