class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :address, presence: true
end
