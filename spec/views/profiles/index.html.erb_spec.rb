require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :avtar_data => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "MyText",
        :user => nil
      ),
      Profile.create!(
        :avtar_data => "MyText",
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
