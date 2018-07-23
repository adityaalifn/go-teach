require 'rails_helper'

RSpec.describe "costumers/new", type: :view do
  before(:each) do
    assign(:costumer, Costumer.new(
      :username => "MyString",
      :password => "MyString",
      :name => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders new costumer form" do
    render

    assert_select "form[action=?][method=?]", costumers_path, "post" do

      assert_select "input[name=?]", "costumer[username]"

      assert_select "input[name=?]", "costumer[password]"

      assert_select "input[name=?]", "costumer[name]"

      assert_select "input[name=?]", "costumer[phone_number]"
    end
  end
end
