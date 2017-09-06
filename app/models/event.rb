class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  # validate :end_time_needs_to_be_before_start_time
  #
  # def end_time_needs_to_be_before_start_time
  #   if :ends_at < :starts_at
  #     errors.add(:end_time, "Wrong")
  #   end
  # end


end
#
