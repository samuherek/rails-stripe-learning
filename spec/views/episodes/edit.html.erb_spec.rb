require 'rails_helper'

RSpec.describe "episodes/edit", type: :view do
  before(:each) do
    @episode = assign(:episode, Episode.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit episode form" do
    render

    assert_select "form[action=?][method=?]", episode_path(@episode), "post" do

      assert_select "input#episode_title[name=?]", "episode[title]"

      assert_select "textarea#episode_description[name=?]", "episode[description]"
    end
  end
end
