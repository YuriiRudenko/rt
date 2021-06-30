module Rt
  class Photos < Grape::API
    helpers Rt::Helpers::User
    get 'photos' do
      current_user = authorized_user
      error!('User not found') unless current_user
      photos = Photo.all
      present photos, with: Rt::Entities::Photos
    end
  end
end
