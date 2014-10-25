require 'rails_helper'

describe Customer do
	it "should not be valid if name is blank " do
		Customer.create(name: "").should_not be_valid
	end
	it "should not be valid if email is blank " do
		Customer.create(email: "").should_not be_valid
	end  
	it "should be valid if name and email is not blank" do 
		Customer.create(name: "charles",email: "charles@email.com").should be_valid
	end
end