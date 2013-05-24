require 'spec_helper'

describe "actors/edit" do
  before(:each) do
    @actor = assign(:actor, stub_model(Actor,
      :name => "MyString",
      :gender => "MyString"
    ))
  end

  it "renders the edit actor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", actor_path(@actor), "post" do
      assert_select "input#actor_name[name=?]", "actor[name]"
      assert_select "input#actor_gender[name=?]", "actor[gender]"
    end
  end
end
