require 'spec_helper'

describe "schedules/edit.html.erb" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule))
  end

  it "renders the edit schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedule_path(@schedule), :method => "post" do
    end
  end
end
