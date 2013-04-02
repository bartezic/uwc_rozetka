class ProductFeature < ActiveRecord::Base
  belongs_to :product
  belongs_to :feature
  attr_accessible :value

  attr_accessible :product_id, :feature_id
end
