class Board < ApplicationRecord

  # model association
  has_many :lists, dependent: :destroy
  # belongs_to :user

  # validations
  validates_presence_of :name, :created_by

end
