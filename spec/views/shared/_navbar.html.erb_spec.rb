require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  context "with email" do
    let(:user) { create :user }

    it "signed in successfully" do
      render
      expect(rendered).to have_content user.email
    end
  end

end
