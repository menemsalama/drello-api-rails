class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :updated_at

  # model association
  has_many :cards

end
