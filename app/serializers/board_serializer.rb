class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_by, :created_at, :updated_at
  # attributes :id, :title, :created_by, :created_at, :updated_at

  # model association
  has_many :lists

end
