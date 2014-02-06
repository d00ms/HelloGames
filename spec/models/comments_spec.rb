require 'spec_helper'

describe Comments do
	let(:user) { FactoryGirl.create(:user)}
	before { @comments = user.comments.build(content: "This website is great")}
  subject { @comments }

  it { should respond_to(:content)}
  it { should respond_to(:user_id)}
  it { should respond_to(:user)}
  its(:user) { should eq user}
  
  it {should be_valid}

  describe "when user_id is not present" do
  	before {@comments.user_id = nil}
  	it {should_not be_valid}
  end
  	 	
end
