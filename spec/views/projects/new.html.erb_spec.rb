require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :idea => "MyText",
      :address => "MyString",
      :zipcode => 1,
      :problem => "MyText",
      :solution => "MyText"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "textarea#project_idea", :name => "project[idea]"
      assert_select "input#project_address", :name => "project[address]"
      assert_select "input#project_zipcode", :name => "project[zipcode]"
      assert_select "textarea#project_problem", :name => "project[problem]"
      assert_select "textarea#project_solution", :name => "project[solution]"
    end
  end
end
