module Rt
  class Albums < Grape::API
    helpers Rt::Helpers::User

    get 'albums' do
      current_user = authorized_user
      error!('User not found') unless current_user
      albums = Album.all
      present albums, with: Rt::Entities::Albums
      end
    end
end
