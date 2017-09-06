class Profile < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true, length: { maximum: 500}


  def full_name
    "#{first_name} #{last_name}"
  end

end
