class News < ActiveRecord::Base
	has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "100x100#" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  	validates :image, :title, :text,  presence: true
  	validates_length_of :title,  minimum: 5, maximum: 20
  	validates_length_of :text,  minimum: 20
  	belongs_to :doctor
end
