require 'rails_helper'

RSpec.describe "life_events/edit", :type => :view do
  before(:each) do
    @life_event = assign(:life_event, LifeEvent.create!(
      :happiness => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit life_event form" do
    render

    assert_select "form[action=?][method=?]", life_event_path(@life_event), "post" do

      assert_select "input#life_event_happiness[name=?]", "life_event[happiness]"

      assert_select "textarea#life_event_description[name=?]", "life_event[description]"
    end
  end
end
