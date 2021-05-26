class AlbumSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :author, :amount_photo, :updated_at

  def author
    self.object.user.display_name
  end

  def amount_photo
    @photos.count
  end
end
