require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :Website_Name => "MyString",
      :Website_Address => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_Website_Name[name=?]", "user[Website_Name]"
      assert_select "input#user_Website_Address[name=?]", "user[Website_Address]"
    end
  end
end
