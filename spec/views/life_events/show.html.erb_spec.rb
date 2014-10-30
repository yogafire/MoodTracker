require 'rails_helper'

RSpec.describe "life_events/show", :type => :view do
  before(:each) do
    @life_event = assign(:life_event, LifeEvent.create!(
      :happiness => 1,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
