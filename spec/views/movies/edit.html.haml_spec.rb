require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "MyString",
      :rated => "MyString",
      :runtime => 1,
      :summary => "MyText"
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do
      assert_select "input#movie_title[name=?]", "movie[title]"
      assert_select "input#movie_rated[name=?]", "movie[rated]"
      assert_select "input#movie_runtime[name=?]", "movie[runtime]"
      assert_select "textarea#movie_summary[name=?]", "movie[summary]"
    end
  end
end
