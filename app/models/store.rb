class Store < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :items
  has_many_attached :images

  attribute :suspended, :integer, default: 1
end