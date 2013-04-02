class ReviewComment < ActiveRecord::Base
  belongs_to :review
  attr_accessible :comment, :username
  attr_accessible :review_id
end
