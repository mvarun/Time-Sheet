class Comment < ActiveRecord::Base
  belongs_to :post
  has_many:replays,:dependent=>:destroy
end
