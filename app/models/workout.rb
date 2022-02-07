class Workout < ApplicationRecord
    before_create :store_day_of_week
    belongs_to :category
    belongs_to :user

    def store_day_of_week
        day_of_week = self.date.strftime("%A")
        self.day_of_week = day_of_week
    end
end
