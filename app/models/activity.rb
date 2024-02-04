class Activity < ApplicationRecord
    belongs_to :user   
  
    # Adding validations to activity fields  
    validates :title, presence: true, length: { maximum: 100 }
    validates :activity_type, presence: true, length: { maximum: 50 }
    validates :start, presence: true

    # Duration and Calories should be an integer value (Cannot be negative)
    validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validates :calories, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  
end
