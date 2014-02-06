require 'spec_helper'

describe User do
	before do
	@user = User.new(website_name: "Example Website", website_address:"www.blabla.com", rating: 12 )

end

subject { @user}


  it { should respond_to(:admin)}
  it { should respond_to(:comments)}

end


