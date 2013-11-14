require 'spec_helper'

describe "names/edit" do
  before(:each) do
    @name = assign(:name, stub_model(Name,
      :content => "MyText"
    ))
  end

  it "renders the edit name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", name_path(@name), "post" do
      assert_select "textarea#name_content[name=?]", "name[content]"
    end
  end
end
