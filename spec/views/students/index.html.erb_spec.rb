require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :full_name => "Full Name",
        :username => "Username",
        :password => "Password",
        :address => "MyText",
        :school_level => "School Level",
        :phone_number => "Phone Number"
      ),
      Student.create!(
        :full_name => "Full Name",
        :username => "Username",
        :password => "Password",
        :address => "MyText",
        :school_level => "School Level",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "School Level".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end
