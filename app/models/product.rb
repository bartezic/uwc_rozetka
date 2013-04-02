class Product < ActiveRecord::Base
  attr_accessible :code, :name, :slug, :description

  has_many :photos
  has_one :price
  belongs_to :brand
  has_many :reviews

  has_many :product_features

  has_many :accessories

  attr_accessible :brand_id

  def rating
    if self.reviews.count>0
        "%.2f" % (self.reviews.select.collect(&:marg).sum/(self.reviews.count*1.0))
    else
        ""
    end
  end

  def features_short
    ProductFeature.joins(:feature).where(:product_id=>self.id).where("features.primary=?", true).map(&:value).join(" / ")
  end

  def primary_features
    ProductFeature.joins(:feature).where(:product_id=>self.id).where("features.primary=?", true)
  end

  def reviews_with_comments
    self.reviews
  end
end
