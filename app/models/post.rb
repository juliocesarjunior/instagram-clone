class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :admin
	before_create :set_active

	scope :active, -> {where active: true}

	def set_active
		self.active = true
	end
end
