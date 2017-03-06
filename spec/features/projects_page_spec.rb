require "rails_helper"


describe "display projects path ", :vcr => true do
  it "will let the all users see starred repositories grabbed by the github api." do
    visit projects_path
    expect(page).to have_content 'nghaven'
  end
end
