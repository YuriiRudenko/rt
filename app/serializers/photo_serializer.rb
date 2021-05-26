class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url, :author

  def url
    object.image_url
  end

  def author
    object.user.display_name
  end
end
