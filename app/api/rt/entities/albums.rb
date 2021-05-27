module Rt
  module Entities::Albums
    class Base < Grape::Entity
      expose :name
      expose :user_id
      expose :updated_at
      expose :photos_count
    end
  end
end
