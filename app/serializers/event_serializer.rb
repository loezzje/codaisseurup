class EventSerializer < ActiveModel::Serializer
  attributes :name, :description, :capacity

  has_many :registrations
end
