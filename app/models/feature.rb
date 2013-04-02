class Feature < ActiveRecord::Base
  attr_accessible :in_filter, :name, :primary

  def feature_values
    ProductFeature.where(:feature_id=>self.id).select(:value).map(&:value).uniq
  end
end
