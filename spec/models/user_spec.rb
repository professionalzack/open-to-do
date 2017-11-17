require 'rails_helper'


RSpec.describe User do
  let(:user) { User.create!(username: "Bloccit User",  password: "password") }
  # Shoulda tests for name
  it { is_expected.to validate_presence_of(:username) }
 
  # Shoulda tests for password
  it { is_expected.to validate_presence_of(:password) }
  it { is_expected.to have_secure_password }

 
  describe "attributes" do
    it "should have name attributes" do
      expect(user).to have_attributes(username: "Bloccit User")
    end
  end

  
end
