module Api
  module V1
    class Albums < Grape::API
      namespace :albums do
        desc 'Return all albums'
        params do
          requires :token, type: String
        end
        get do
          user = User.find(decode['user_id'])
          error!('Not find user', 404) unless user
          albums = Album.all
          present albums, with: Entities::Albums::Index
        end
      end
    end
  end
end
