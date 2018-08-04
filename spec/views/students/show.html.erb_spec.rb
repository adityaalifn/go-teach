require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :full_name => "Full Name",
      :username => "Username",
      :password => "Password",
      :address => "MyText",
      :school_level => "School Level",
      :phone_number => "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/School Level/)
    expect(rendered).to match(/Phone Number/)
  end
end
