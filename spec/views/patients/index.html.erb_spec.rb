require 'spec_helper'

describe "patients/index.html.erb" do
  before(:each) do
    assign(:patients, [
      stub_model(Patient),
      stub_model(Patient)
    ])
  end

  it "renders a list of patients" do
    render
  end
end
