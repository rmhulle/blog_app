require 'rails_helper'

RSpec.feature "Showing Articles" do
  
  before do
    @article = Article.create( title: "The First", body: "First Body")
  end  
  
  scenario "User shows a specific Article" do

    visit "/"

    click_link @article.title
    
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.body)
    expect(page.current_path).to eq(article_path(@article))
  
  end  
end

