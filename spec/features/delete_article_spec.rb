require 'rails_helper'

RSpec.feature "Deleting Articles" do
  
  before do
    @article = Article.create( title: "The First", body: "First Body")
  end  
  
  scenario "User Deletes Article" do

    visit "/"
    
    click_link @article.title    
    
    click_link "Delete Article"

    expect(page).to have_content("Article has been deleted")
    
  end  
  

end

