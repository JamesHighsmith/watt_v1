require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :idea => "MyText",
      :address => "Address",
      :zipcode => 1,
      :problem => "MyText",
      :solution => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Address/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
