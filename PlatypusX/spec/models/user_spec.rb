require 'spec_helper'

describe User do
  context "accessibility" do
    it { should allow_mass_assignment_of(:name)}
    it { should allow_mass_assignment_of(:email)}
    it { should allow_mass_assignment_of(:password)}
    it { should allow_mass_assignment_of(:password_confirmation)}
  end

  context "validation" do
    it {should validate_uniqueness_of(:email)}
    it {should validate_uniqueness_of(:name)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:email)}
  end
end

