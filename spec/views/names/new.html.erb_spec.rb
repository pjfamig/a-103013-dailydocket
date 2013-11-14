require 'spec_helper'

describe "names/new" do
  before(:each) do
    assign(:name, stub_model(Name,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", names_path, "post" do
      assert_select "textarea#name_content[name=?]", "name[content]"
    end
  end
end
