class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :summary, length: { maximum: 250 }
  validates :content, length: { minimum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  
  CLICKBAIT_PATTERNS = [
    /Won't Believe
    ]
end
