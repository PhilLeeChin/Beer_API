class StyleSerializer < ActiveModel::Serializer
  attributes :id, :served, :appetizers

  def username
    self.object.user.username
  end
end
