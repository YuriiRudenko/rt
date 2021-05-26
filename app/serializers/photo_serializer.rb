class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :url, :author

  def url
    self.object.image_url
  end

  def author
    self.object.user.display_name
  end

  
end
