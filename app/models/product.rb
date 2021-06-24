class Product < ApplicationRecord

# Add these product validations
# name should exist
  validates :name, presence: true
  validates :name, uniqueness: true
  
# price should exist
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
# inventory integer
  # validates :inventory, numericality: { only_integer: true }
# test image url for validity
# description has to be at least 10 characters, and at most 500 characters
  validates :description, presence: true
  validates :description, length: {in: 10..500}


  #is_discounted? => true/false
  def is_discounted?
    if price < 10 
      return true
    else
      return false
    end
  end

  #tax
  def tax
    tax = price * 0.09
    return tax.round(2)
  end
  
  #total
  def total
    tax + price
  end

  belongs_to: supplier
end
