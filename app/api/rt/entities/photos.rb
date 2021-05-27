module Rt
  module Entities::Photos
    class Base < Grape::Entity
      expose :image
      expose :album_id
      expose :created_at
      expose :author_id
    end
  end
end
