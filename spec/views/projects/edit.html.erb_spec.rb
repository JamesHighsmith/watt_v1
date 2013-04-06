require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :idea => "MyText",
      :address => "MyString",
      :zipcode => 1,
      :problem => "MyText",
      :solution => "MyText"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "textarea#project_idea", :name => "project[idea]"
      assert_select "input#project_address", :name => "project[address]"
      assert_select "input#project_zipcode", :name => "project[zipcode]"
      assert_select "textarea#project_problem", :name => "project[problem]"
      assert_select "textarea#project_solution", :name => "project[solution]"
    end
  end
end
