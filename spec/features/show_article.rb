require 'rails_helper'

RSpec.feature "Showing Articles" do
  
  scenario "User shows a specific Article" do

    visit "/"
    click_link "New Article"
    
    fill_in "Title", with: "Creating the first Article"
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    
    expect(page.current_path).to eq(articles_path)
  end  
end

