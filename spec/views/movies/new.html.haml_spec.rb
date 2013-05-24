require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :title => "MyString",
      :rated => "MyString",
      :runtime => 1,
      :summary => "MyText"
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_rated[name=?]", "movie[rated]"
      assert_select "input#movie_runtime[name=?]", "movie[runtime]"
      assert_select "textarea#movie_summary[name=?]", "movie[summary]"
    end
  end
end
