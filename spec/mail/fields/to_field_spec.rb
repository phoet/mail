require File.dirname(__FILE__) + '/../../spec_helper'

describe Mail::ToField do
  it "should initialize" do
    doing { Mail::ToField.new("To", "Mikel") }.should_not raise_error
  end
  
  it "should mix in the AddressField module" do
    Mail::ToField.included_modules.should include(Mail::AddressField::InstanceMethods) 
  end
  
  # Actual testing of AddressField methods occurs in the address field spec file

end