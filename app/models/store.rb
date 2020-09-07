class Store < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :reviews
  has_many :items
  has_many_attached :images
  has_many :likes, dependent: :destroy
  attribute :suspended, :integer, default: 1

  scope :by_id, -> { order(id: :desc) }
end