require 'spec_helper'


describe RSpec::Assumptions::ClassExtensions do

	describe '.assume' do
		describe 'success' do
			assume{ 1.should == 1 }
		end

		pending 'failure' do # TODO: Don't know how to test this properly
			assume( '2 is 1' ){ 2.should == 1 }
			assume{ 2.should == 1 }
		end
	end
end
