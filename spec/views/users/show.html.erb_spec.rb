require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :Website_Name => "Website Name",
      :Website_Address => "Website Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Website Name/)
    rendered.should match(/Website Address/)
  end
end
