class Item < ApplicationRecord
  belongs_to :store
  has_and_belongs_to_many :categories
  has_one_attached :avatar
end
