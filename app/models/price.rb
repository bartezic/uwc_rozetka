class Price < ActiveRecord::Base
  belongs_to :product  
  attr_accessible :product_id
  attr_accessible :price_cents

  monetize :price_cents
end
