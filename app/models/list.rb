class List < ApplicationRecord
  belongs_to :board

  has_many :cards, dependent: :destroy

  # validations
  validates_presence_of :title

end
