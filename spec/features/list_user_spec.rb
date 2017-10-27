require 'rails_helper'

describe "Current user viewing the list of users" do

    before { login_as user }

     let(:user) { create :user, email: Faker::Internet.email }


     let!(:user) { create :user, name: "Su" }

     it "shows all users" do
       visit root_url

  expect(page).to have_text("Admin")

end

end
