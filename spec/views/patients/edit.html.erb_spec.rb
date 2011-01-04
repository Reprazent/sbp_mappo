require 'spec_helper'

describe "patients/edit.html.erb" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient))
  end

  it "renders the edit patient form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => patient_path(@patient), :method => "post" do
    end
  end
end
