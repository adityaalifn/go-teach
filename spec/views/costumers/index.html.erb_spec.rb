require 'rails_helper'

RSpec.describe "costumers/index", type: :view do
  before(:each) do
    assign(:costumers, [
      Costumer.create!(
        :username => "Username",
        :password => "Password",
        :name => "Name",
        :phone_number => "Phone Number"
      ),
      Costumer.create!(
        :username => "Username",
        :password => "Password",
        :name => "Name",
        :phone_number => "Phone Number"
      )
    ])
  end

  it "renders a list of costumers" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
  end
end
