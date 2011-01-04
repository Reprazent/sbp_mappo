require 'spec_helper'

describe "patients/show.html.erb" do
  before(:each) do
    @patient = assign(:patient, stub_model(Patient))
  end

  it "renders attributes in <p>" do
    render
  end
end
