class Product < ActiveRecord::Base
	validates_presence_of :name, :description, :size, :price, 
												:color, :category, :image
  validate :good_price
  validates_uniqueness_of :name
												
												
 private
 												
  def good_price
  	errors.add(:price, "price should be normal") if price.nil? || price < 1
  end												
  
end
