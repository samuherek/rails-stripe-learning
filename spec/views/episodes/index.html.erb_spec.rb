require 'rails_helper'

RSpec.describe "episodes/index", type: :view do
  before(:each) do
    assign(:episodes, [
      Episode.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Episode.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of episodes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
