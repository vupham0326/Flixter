class Course < ActiveRecord::Base
	mount_uploader :image, ImageUploader	

	belongs_to :user
	has_many :sections
	has_many :enrollments
	
	validates :title, :presence => {:message => "Title can't be blank"}
	validates :description, :presence => {:message => "Description can't be blank"}
	validates :cost, :presence => {:message => "Cost can't be blank"}, :numericality => {:greater_than_or_equal_to => 0}

	def free?
		cost.zero?
	end

	def premium?
		! free?
	end
end
