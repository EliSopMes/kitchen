class Ingredient < ApplicationRecord
  belongs_to :recipe

  enum scale: { grams: 0, milliliter: 1, number: 2, teaspoon: 3, tablespoon: 4, pinch: 5 }

  validates :title, presence: true
  validates :amount, presence: true
end
