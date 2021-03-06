require "rails_helper"


RSpec.feature "Listing Articles" do

  before do
    @article1 = Article.create( title: "The First", body: "First Body")
    @article2 = Article.create( title: "The Second", body: "Second Body")
  end  

  scenario "List all articles" do
    
    visit "/"
    
    expect(page).to have_content(@article1.title)
    expect(page).to have_link(@article1.title)
    expect(page).to have_content(@article1.body)


    expect(page).to have_content(@article2.title)
    expect(page).to have_link(@article2.title)
    expect(page).to have_content(@article2.body)
    
  end


end
