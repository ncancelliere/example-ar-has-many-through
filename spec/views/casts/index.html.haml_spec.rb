require 'spec_helper'

describe "casts/index" do
  before(:each) do
    assign(:casts, [
      stub_model(Cast,
        :movie => "",
        :actor => "",
        :character => ""
      ),
      stub_model(Cast,
        :movie => "",
        :actor => "",
        :character => ""
      )
    ])
  end

  it "renders a list of casts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
