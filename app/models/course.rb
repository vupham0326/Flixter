class Course < ActiveRecord::Base
	belongs_to :user

	validates :title, :presence => {:message => "Title can't be blank"}
	validates :description, :presence => {:message => "Description can't be blank"}
	validates :cost, :presence => {:message => "Cost can't be blank"}, :numericality => {:greater_than_or_equal_to => 0}
end
