require 'rails_helper'

RSpec.feature "Updating Articles" do
  
  before do
    @article = Article.create( title: "The First", body: "First Body")
  end  
  
  scenario "User updates a Article" do

    visit "/"

    click_link @article.title
    click_link "Edit Article"
    
    fill_in "Title", with: "Title Updated"
    fill_in "Body", with: "Body Updated"
    click_button "Update Article"
    

    expect(page).to have_content("Article has been updated")
    expect(page.current_path).to eq(article_path(@article))

  end  
  
    scenario "User cannot updates a Article" do

    visit "/"

    click_link @article.title
    click_link "Edit Article"
    
    fill_in "Title", with: ""
    fill_in "Body", with: "Body Updated"
    click_button "Update Article"
    

    expect(page).to have_content("Article has not been updated")

  end  
  
  
  
  
end

