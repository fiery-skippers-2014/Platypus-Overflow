require 'spec_helper'

describe Question do 
	it { should allow_mass_assignment_of(:title) }
	it { should allow_mass_assignment_of(:body) }	
	it { should validate_presence_of(:body) }
	it { should validate_presence_of(:title) }
end