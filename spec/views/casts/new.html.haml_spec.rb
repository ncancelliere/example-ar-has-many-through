require 'spec_helper'

describe "casts/new" do
  before(:each) do
    assign(:cast, stub_model(Cast,
      :movie => "",
      :actor => "",
      :character => ""
    ).as_new_record)
  end

  it "renders new cast form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", casts_path, "post" do
      assert_select "input#cast_movie[name=?]", "cast[movie]"
      assert_select "input#cast_actor[name=?]", "cast[actor]"
      assert_select "input#cast_character[name=?]", "cast[character]"
    end
  end
end
