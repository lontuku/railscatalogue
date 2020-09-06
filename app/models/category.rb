class Category < ApplicationRecord
    has_many :stores
    has_and_belongs_to_many :items
end
