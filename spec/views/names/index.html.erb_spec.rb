require 'spec_helper'

describe "names/index" do
  before(:each) do
    assign(:names, [
      stub_model(Name,
        :content => "MyText"
      ),
      stub_model(Name,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of names" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
