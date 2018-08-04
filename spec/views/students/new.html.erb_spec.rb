require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :full_name => "MyString",
      :username => "MyString",
      :password => "MyString",
      :address => "MyText",
      :school_level => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input[name=?]", "student[full_name]"

      assert_select "input[name=?]", "student[username]"

      assert_select "input[name=?]", "student[password]"

      assert_select "textarea[name=?]", "student[address]"

      assert_select "input[name=?]", "student[school_level]"

      assert_select "input[name=?]", "student[phone_number]"
    end
  end
end
