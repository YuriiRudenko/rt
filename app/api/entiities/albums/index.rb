module Api
  module Entities
    module Albums
      class Index < Grape::Entity
        expose :albums do |albums|
          albums.map { |album| Api::Entities::Albums::Show.represent(album) }
        end
      end
    end
  end
end
