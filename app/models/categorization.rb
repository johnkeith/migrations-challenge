class Categorization < ActiveRecord::Base
  validates :category, 
            presence: true, 
            uniqueness: { scope: :book }
  validates :book, presence: true
  
  belongs_to :category
  belongs_to :book
end
