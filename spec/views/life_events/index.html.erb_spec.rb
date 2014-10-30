require 'rails_helper'

RSpec.describe "life_events/index", :type => :view do
  before(:each) do
    assign(:life_events, [
      LifeEvent.create!(
        :happiness => 1,
        :description => "MyText"
      ),
      LifeEvent.create!(
        :happiness => 1,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of life_events" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
