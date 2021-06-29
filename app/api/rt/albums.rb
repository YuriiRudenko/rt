module Rt
  class Albums < Grape::API
    get 'albums' do
      albums = Album.all
      present albums, with: Rt::Entities::Albums
      end
    end
end
