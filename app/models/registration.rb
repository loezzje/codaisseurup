class Registration < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :event

def total_price
  self.price = price.event
  self.total = price * number_of_participants
end

end
