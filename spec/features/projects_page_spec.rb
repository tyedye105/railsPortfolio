require "rails_helper"


describe "adding an image" do
  it "will let the adminstrator add an image." do
    user = FactoryGirl.create(:user, :is_admin => true)
    visit user_path(user)
    expect(page).to have_content 'nghaven'
  end
end
