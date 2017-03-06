require 'rails_helper'
describe Project
  describe ".get_all method", :vcr => true do
    it "will perform an api call to retrieve the first 100 repositories" do
    response = Project.get_all
    expect(response.length).to eq(100)
  end
end
