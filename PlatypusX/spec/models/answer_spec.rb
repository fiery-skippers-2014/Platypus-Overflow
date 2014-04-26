require 'spec_helper'

describe Answer do
  context "accessibility" do
    it { should allow_mass_assignment_of(:response)}
    it { should allow_mass_assignment_of(:question_id)}
  end

  context "validation" do
    it {should validate_uniqueness_of(:response)}
  end

  context "association" do
    it { should belong_to(:question) }
  end
end
