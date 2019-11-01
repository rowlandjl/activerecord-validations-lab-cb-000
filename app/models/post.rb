class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :summary, length: { maximum: 250 }
  validates :content, length: { minimum: 250 }
end
