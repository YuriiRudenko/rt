module Api
  module Entities
    module Photos
      class Index < Grape::Entity
        expose :photos do |photos|
          photos.map { |photo| Api::Entities::Photos::Show.represent(photo) }
        end
      end
    end
  end
end
