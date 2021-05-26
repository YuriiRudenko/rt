class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url, :author, :album, :date

  def url
    object.image_url
  end

  def author
    object.user.display_name
  end

  def album
    object.album.name
  end

  def date
    object.created_at
  end
end
