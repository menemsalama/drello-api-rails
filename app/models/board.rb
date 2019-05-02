class Board < ApplicationRecord

  # # model association
  # belongs_to :user

  # validations
  validates_presence_of :name, :created_by

end
