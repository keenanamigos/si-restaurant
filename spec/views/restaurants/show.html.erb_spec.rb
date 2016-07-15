require 'rails_helper'

RSpec.describe "restaurants/show", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :category_id => 2,
      :user_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
