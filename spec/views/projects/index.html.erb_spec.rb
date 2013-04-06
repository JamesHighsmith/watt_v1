require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :idea => "MyText",
        :address => "Address",
        :zipcode => 1,
        :problem => "MyText",
        :solution => "MyText"
      ),
      stub_model(Project,
        :idea => "MyText",
        :address => "Address",
        :zipcode => 1,
        :problem => "MyText",
        :solution => "MyText"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
