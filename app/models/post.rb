require 'elasticsearch/model'

class Post < ActiveRecord::Base
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks
	has_many :comments
	scope :most_recent, -> (limit)  { order("created_at asc").limit(limit) }
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
Post.import force: true