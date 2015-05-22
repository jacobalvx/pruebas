class User < ActiveRecord::Base

	validates :role, inclusion: { in: %w(trainer athlete)}
	#validates :role, :password, :email, presence: true

	has_many :workouts, as: :trainer
	has_many :workouts, as: :athlete

	has_many :users, as: :trainers, through: :workouts
	has_many :users, as: :athletes, through: :workouts

	scope :trainer, -> {where(role: "trainer")}
	scope :athlete, -> {where(role: "athlete")}
end
