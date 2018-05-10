require "rails_helper"

describe "user sees one articles" do
  describe "they visit /articles/1" do
    it "displays all articles" do
      article_1 = Article.create!(title: "Title 1", body: "Body 1")
      article_2 = Article.create!(title: "Title 2", body: "Body 2")

      visit '/articles/1'

      expect(page).to have_link(article_1.title)
      expect(page).to not_have_link(article_2.title)
    end
  end
end
