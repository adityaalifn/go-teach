require 'rails_helper'

RSpec.describe "costumers/edit", type: :view do
  before(:each) do
    @costumer = assign(:costumer, Costumer.create!(
      :username => "MyString",
      :password => "MyString",
      :name => "MyString",
      :phone_number => "MyString"
    ))
  end

  it "renders the edit costumer form" do
    render

    assert_select "form[action=?][method=?]", costumer_path(@costumer), "post" do

      assert_select "input[name=?]", "costumer[username]"

      assert_select "input[name=?]", "costumer[password]"

      assert_select "input[name=?]", "costumer[name]"

      assert_select "input[name=?]", "costumer[phone_number]"
    end
  end
end
