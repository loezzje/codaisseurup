require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is invalid without a description" do
      event = Event.new(description:"")
      event.valid?
      expect(event.errors).to have_key(:description)
    end

    it "is invalid to have a description longer than 500 characters" do
      event = Event.new(description: "L" * 501)
      event.valid?
      expect(event.errors).to have_key(:description)
    end

    it "is invalid to have no start time" do
      event = Event.new(starts_at: "")
      event.valid?
      expect(event.errors).to have_key(:starts_at)
    end

    it "is invalid to have no end time" do
      event = Event.new(ends_at: "")
      event.valid?
      expect(event.errors).to have_key(:ends_at)
    end

    # it "is not possible to have an end time that is before the start time" do
    #   event = Event.new(starts_at: "6/9/2017 15:00", ends_at: "6/9/2018 14:00")
    #   event.valid?
    #   expect(event.errors.messages).to have_text("Wrong")
    # end
  end

  describe "association with user" do
    let(:user) { create :user }

    it "belongs to a user" do
      event = user.events.new

      expect(event.user).to eq(user)
    end
  end

  describe "association with category" do
    let(:event) { create :event }

    let(:category1) { create :category, name: "Hiking", events: [event] }
    let(:category2) { create :category, name: "Eating", events: [event] }
    let(:category3) { create :category, name: "Drinking", events: [event] }

    it "has categories" do
      expect(event.categories).to include(category1)
      expect(event.categories).to include(category2)
      expect(event.categories).to include(category3)
    end
  end


end
