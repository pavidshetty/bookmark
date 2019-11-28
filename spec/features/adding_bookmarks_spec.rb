require 'pg'
# Visiting a page, /bookmarks/new
# Typing a URL into a form on that page
# Submitting the form
# Seeing the bookmark they just submit  ted.
feature 'Adding a new bookmark' do
  scenario 'A user can add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
