require 'rails_helper'

RSpec.describe 'article show page', type: :feature do
  before(:each) do
    @article_1 = Article.create!(title: "Week 1 at Turing", body: "Holy crap what happened.")
    @article_2 = Article.create!(title: "Week 2 at Turing", body: "Drinking from a firehose.")
  end
  describe 'when a user visits an article show page' do
    it 'displays a single article' do

      visit articles_path

      click_link @article_1.title

      expect(page).to have_content(@article_1.title)
      expect(page).to have_content(@article_1.body)

    end
  end
end
