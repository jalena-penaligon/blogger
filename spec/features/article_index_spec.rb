require 'rails_helper'

RSpec.describe 'article idex', type: :feature do
  before(:each) do
    @article_1 = Article.create!(title: "Week 1 at Turing", body: "Holy crap what happened.")
    @article_2 = Article.create!(title: "Week 2 at Turing", body: "Drinking from a firehose.")
  end
  describe 'user sees all articles' do
    it 'displays all articles' do
      visit articles_path

      expect(page).to have_content(@article_1.title)
      expect(page).to have_link(@article_1.title)

      expect(page).to have_content(@article_2.title)
      expect(page).to have_link(@article_2.title)

      expect(page).to have_link("Create a New Article")
    end
  end
end
