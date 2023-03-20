class Recipe < ApplicationRecord
  has_many :ingredients

  enum area: { cooking: 0, baking: 1 }

  enum status: { want_to_try: 0, tried: 1 }

  validates :name, presence: true
end
