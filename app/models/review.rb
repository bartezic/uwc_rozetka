class Review < ActiveRecord::Base
  belongs_to :product
  attr_accessible :cons, :email, :marg, :name, :pros, :comment
  attr_accessible :product_id

  has_many :review_usefullnesses
  has_many :review_comments

  def usefull
    self.review_usefullnesses.where(:usefull=>true).count
  end

  def unusefull
    self.review_usefullnesses.where(:usefull=>false).count
  end

  def usefullness
    "%.0f" % (100*usefull/self.review_usefullnesses.count*1.0) if self.review_usefullnesses.count>0    
  end


end
