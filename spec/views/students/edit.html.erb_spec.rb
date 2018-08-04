require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :full_name => "MyString",
      :username => "MyString",
      :password => "MyString",
      :address => "MyText",
      :school_level => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input[name=?]", "student[full_name]"

      assert_select "input[name=?]", "student[username]"

      assert_select "input[name=?]", "student[password]"

      assert_select "textarea[name=?]", "student[address]"

      assert_select "input[name=?]", "student[school_level]"

      assert_select "input[name=?]", "student[phone_number]"
    end
  end
end
