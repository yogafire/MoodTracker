require 'rails_helper'

RSpec.describe "life_events/new", :type => :view do
  before(:each) do
    assign(:life_event, LifeEvent.new(
      :happiness => 1,
      :description => "MyText"
    ))
  end

  it "renders new life_event form" do
    render

    assert_select "form[action=?][method=?]", life_events_path, "post" do

      assert_select "input#life_event_happiness[name=?]", "life_event[happiness]"

      assert_select "textarea#life_event_description[name=?]", "life_event[description]"
    end
  end
end
