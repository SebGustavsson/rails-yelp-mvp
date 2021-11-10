class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ['belgian', 'french', 'japanese', 'italian', 'chinese']
  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
