class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  # validate :ends_at_cant_be_before_start
  #
  # def ends_at_cant_be_before_start
  #     return if ends_at.blank? || starts_at.blank?
  #     if ends_at <= starts_at
  #       errors.add(:ends_at, "End time has to be later than starting time")
  #     end
  # end
end
#
