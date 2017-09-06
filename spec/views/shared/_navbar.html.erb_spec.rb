require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  context "without profile" do
    let(:user) { create :user, email: 'woot@email.com' }

    it "renders email" do
      render
      expect(rendered).to have_content ('woot@email.com')
    end
  end

  context "with profile" do
    let(:profile) { build :profile, first_name: 'Marloes', last_name: 'Jansen' }
    let(:user) { create :user, profile: profile }

    it "renders first and last name" do
      render
      expect(rendered).to have_content('Marloes Jansen')
    end
  end
end
