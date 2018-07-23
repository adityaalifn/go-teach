require 'rails_helper'

RSpec.describe "costumers/show", type: :view do
  before(:each) do
    @costumer = assign(:costumer, Costumer.create!(
      :username => "Username",
      :password => "Password",
      :name => "Name",
      :phone_number => "Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone Number/)
  end
end
