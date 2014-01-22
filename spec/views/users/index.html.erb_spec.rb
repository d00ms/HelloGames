require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :Website_Name => "Website Name",
        :Website_Address => "Website Address"
      ),
      stub_model(User,
        :Website_Name => "Website Name",
        :Website_Address => "Website Address"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Website Name".to_s, :count => 2
    assert_select "tr>td", :text => "Website Address".to_s, :count => 2
  end
end
