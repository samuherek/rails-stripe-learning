require 'rails_helper'

RSpec.describe "episodes/new", type: :view do
  before(:each) do
    assign(:episode, Episode.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new episode form" do
    render

    assert_select "form[action=?][method=?]", episodes_path, "post" do

      assert_select "input#episode_title[name=?]", "episode[title]"

      assert_select "textarea#episode_description[name=?]", "episode[description]"
    end
  end
end
