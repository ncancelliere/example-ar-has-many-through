require 'spec_helper'

describe "casts/edit" do
  before(:each) do
    @cast = assign(:cast, stub_model(Cast,
      :movie => "",
      :actor => "",
      :character => ""
    ))
  end

  it "renders the edit cast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cast_path(@cast), "post" do
      assert_select "input#cast_movie[name=?]", "cast[movie]"
      assert_select "input#cast_actor[name=?]", "cast[actor]"
      assert_select "input#cast_character[name=?]", "cast[character]"
    end
  end
end
