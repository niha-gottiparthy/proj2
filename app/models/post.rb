class Post < ActiveRecord::Base
	has_attached_file :image, :styles =>  {
			:thumb => "100x100#",
			:small  => "150x150>",
			:medium => "300x300" },
	                  url: "/system/:hash.:extension",
	                  hash_secret: "abc123"

	validates_attachment_presence :image
	validates_attachment_size :image, :less_than => 5.megabytes
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
	validates :likes, :user, presence: true
	belongs_to :user
end
