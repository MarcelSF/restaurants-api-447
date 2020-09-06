class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
end
