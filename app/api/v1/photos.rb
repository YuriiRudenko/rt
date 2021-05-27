module Api
  module V1
    class Photos < Grape::API
      namespace :photos do
        desc 'Return all photos'
        params do
          requires :token, type: String
        end
        get do
          user = User.find(decode['user_id'])
          error!('Not find user', 404) unless user
          photos = Photo.all
          present photos, with: Entities::Photos::Index
        end
      end
    end
  end
end
