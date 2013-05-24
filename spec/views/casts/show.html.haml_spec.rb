require 'spec_helper'

describe "casts/show" do
  before(:each) do
    @cast = assign(:cast, stub_model(Cast,
      :movie => "",
      :actor => "",
      :character => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
