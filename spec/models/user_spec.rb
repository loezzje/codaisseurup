require 'rails_helper'

RSpec.describe User, type: :model do
  describe "association with event" do
  let(:user) { create :user }
  let!(:event) { create :event, user: user }

  it "has many events" do
    event1 = user.events.new(name: "Hiking")
    event2 = user.events.new(name: "Cycling")

    expect(user.events).to include(event1)
    expect(user.events).to include(event2)
  end

  it "deletes associated events" do
    expect { user.destroy }.to change(Event, :count).by(-1)
  end


  end

  describe "association with registration" do
    let(:participant) {create :user, email: "participant@user.com"}
    let(:organiser) { create :user, email: "organiser@user.com"}

    let!(:event) { create :event, user: organiser }
    let!(:registration) {create :registration, event: event, user: participant }

    it "has registered events" do
      expect(participant.registered_events).to include(event)
    end
  end

end
