module Rt
  class Photos < Grape::API
    get 'photos' do
      photos = Photo.all
      present photos, with: Rt::Entities::Photos
    end
  end
end
