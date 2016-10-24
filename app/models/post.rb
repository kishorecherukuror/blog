class Post < ActiveRecord::Base
	has_many :comments
	scope :most_recent, -> (limit)  { order("created_at asc").limit(limit) }
end
