class Event < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :desciption, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true, 

end
