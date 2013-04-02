class Accessory < ActiveRecord::Base
  belongs_to :product
  belongs_to :accessory_product, :class_name => 'Product'
  belongs_to :discount
  attr_accessible :product_id, :accessory_product_id, :discount_id

  def discount_price
    self.accessory_product.price.price - self.accessory_product.price.price*self.discount.value/100.0
  end
end
