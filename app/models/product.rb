class Product < ApplicationRecord

    belongs_to :category
    has_many :taggings
    has_many :tags, through: :taggings
    
    def price_in_dollars
        price_in_cent.to_d/100 if price_in_cent
    end
    
    def price_in_dollars=(dollars)
      self.price_in_cent = dollars.to_d*100 if dollars.present?
    end
end