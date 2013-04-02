class ReviewUsefullness < ActiveRecord::Base
  belongs_to :review
  attr_accessible :usefull
  attr_accessible :review_id
end
