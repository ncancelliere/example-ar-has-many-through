require 'spec_helper'

describe "actors/index" do
  before(:each) do
    assign(:actors, [
      stub_model(Actor,
        :name => "Name",
        :gender => "Gender"
      ),
      stub_model(Actor,
        :name => "Name",
        :gender => "Gender"
      )
    ])
  end

  it "renders a list of actors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
  end
end
