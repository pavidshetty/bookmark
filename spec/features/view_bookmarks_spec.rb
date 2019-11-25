feature 'Bookmarks' do
  scenario 'returns the list of bookmarks' do
  visit ('/')
  click_on 'Show all Bookmarks'
  expect(page).to have_content "www.google.co.uk"
  end
end
