class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categories, through: :categorizations
  has_many :categorizations

  validates :title, presence: true
  validates :author, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: "%{value} is not a valid rating." }
  has_many :checkouts
end
