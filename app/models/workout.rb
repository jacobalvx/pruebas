class Workout < ActiveRecord::Base

	belongs_to :user, -> {where(role: "trainer")}
	belongs_to :user, -> {where(role: "athlete")}	
end
