class Post < ActiveRecord::Base
  belongs_to :categories
     belongs_to :user
  has_many:comments,:dependent=>:destroy
   cattr_reader :per_page
  @@per_page = 5
end
