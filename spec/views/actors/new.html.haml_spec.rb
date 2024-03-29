require 'spec_helper'

describe "actors/new" do
  before(:each) do
    assign(:actor, stub_model(Actor,
      :name => "MyString",
      :gender => "MyString"
    ).as_new_record)
  end

  it "renders new actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", actors_path, "post" do
      assert_select "input#actor_name[name=?]", "actor[name]"
      assert_select "input#actor_gender[name=?]", "actor[gender]"
    end
  end
end
